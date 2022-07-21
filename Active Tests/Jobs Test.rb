require "selenium-webdriver"
require "rspec"
require "webdrivers"
require "watir"
require "require_all"
require_all "#Classes"

describe "Jobs Test" do

  @driver = Selenium::WebDriver.for :chrome

  #Test Variables
  timestamp = Time.now.strftime("%m/%d/%Y %I:%M:%S")
  dateonly = Time.now.strftime("%m/%d/%Y")
  loginname = "masterchief@yesco.com"
  password = "MCyesco123"
  searchjob = "06/25/2019"
  searchjobid = "1001"
  searchjobname = "status"
  select = "Selenium Test Customer"
  jobname = "Selenium Job #{timestamp}"
  joblocation = "Test Site"
  jobtype = "Service"
  jobpatrol = "1400"
  jobestimate = "1007"
  nte = "1500"
  scopeofwork = "Scope of Work #{timestamp}"
  additionalnotes = "Additional Notes #{timestamp}"
  specialinstructions = "Special Instructions #{timestamp}"
  privatenotes = "Private Notes #{timestamp}"
  activityreason = 'Sales'
  activitydescription = "Description #{timestamp}"
  emailaddress = ', bstevenson@yesco.com'
  emailsubject = "Job Email (Selenium) #{timestamp}"
  emailmessage = 'Selenium Test Email Message'
  description1 = "Test1234"

  #Test Classes
  login = ServizioLoginPage.new(@driver)
  jobs = JobsResource.new(@driver)
  buffers = Buffers.new(@driver)
  activities = ActivitiesResource.new(@driver)
  printemail = PrintEmailPage.new(@driver)
  settings = SettingsResource.new(@driver)
  joblines = JobLinesResource.new(@driver)

  #Setup
  @driver.navigate.to "https://stage.yesco.com/servizio/"
  @driver.manage.window.resize_to(1400, 1024)
  login.enter_loginname(loginname)
  login.enter_password(password)
  login.sign_in()

  #Test Examples
  it "Performes a global search" do
    jobs.open_jobs()
		jobs.search_job(searchjob)

    expect(jobs.top.text.downcase).to include(searchjob.downcase)
  end

  it "Performes a column header search in the ID column" do
    jobs.search_reset()
    buffers.ajax_buffer()
    jobs.search_jobid(searchjobid)
    buffers.ajax_buffer()

    expect(jobs.top_refnumber.text).to include(searchjobid)
  end

  it "Performes a column header search in the Name column" do
    jobs.search_reset()
    buffers.ajax_buffer()
    jobswait = Selenium::WebDriver::Wait.new(:timeout => 5)
    jobswait.until {jobs.search_jobid_field['value'].empty? == true}
    jobs.search_jobname(searchjobname)
    buffers.ajax_buffer()

    expect(jobs.top.text.downcase).to include(searchjobname)
  end

  it "Creates a new job record" do
    jobs.search_reset()
    currenttopref = jobs.top_refnumber.text
    jobs.create_job()
    jobs.select_customer(select)
    jobs.name(jobname)
    jobs.location(joblocation)
    jobs.type(jobtype)
    jobs.patrol(jobpatrol)
    jobs.estimate(jobestimate)
    jobs.nte(nte)
    jobs.notes_tab()
    jobs.scope_of_work(scopeofwork)
    jobs.additional_notes(additionalnotes)
    jobs.special_instructions(specialinstructions)
    jobs.private_notes(privatenotes)
    jobs.save_close()
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {jobs.top_refnumber.text != currenttopref}

    expect(jobs.top.text).to include(jobname)
    expect(jobs.top_type.text).to include(jobtype)
  end

  it "Creates a new activity on a job record" do
    jobs.top_open()
    jobs.activities_tab()
    jobs.actions()
    jobs.actions_createactivity()
    activities.reason(activityreason)
    activities.description(activitydescription)
    activities.save_close()
    iframebuffer = Selenium::WebDriver::Wait.new(:timeout => 10)
    iframebuffer.until {jobs.top_activitydescription.text == activitydescription}

    expect(jobs.top_activitydescription.text).to eql(activitydescription)
    jobs.save_close()
  end

  it "Opens the top job record and emails it from Servizio" do
    jobs.top_open()
    jobs.actions()
    jobs.actions_printemail()
    printemail.additional_notes()
    printemail.ok()
    printemail.email_address(emailaddress)
    printemail.email_subject(emailsubject)
    printemail.email_message(emailmessage)
    printemail.email_close()
    jobs.save_close

    #No expect line here due to this grid not having a "Sent On" column
  end

  it "Adds a new line item to a job record and checks for them in the Job Lines resource" do
    jobs.refresh_grid()
    jobs.top_open()
    jobs.line1_delete()
    jobs.add_lines()
    jobs.line1_description(description1)
    jobs.save_close()
    settings.open_settings()
    settings.open_joblines()

    expect(joblines.top_description.text).to eql(description1)
  end

  it "Makes top job record inactive using grid actions menu" do
    jobs.open_jobs
    topjob = jobs.top_refnumber.text
    jobs.top_actions()
    jobs.actions_makeinactive()

    expect(jobs.top_refnumber.text).not_to eql(topjob)
  end

end
