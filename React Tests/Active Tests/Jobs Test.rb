require "selenium-webdriver"
require "rspec"
require "require_all"
require_all "/Users/Brad/Documents/YESCO Stage Testing/servizio-stage-testing/React Tests/#Classes"

describe "Jobs Test" do

	@driver = Selenium::WebDriver.for :chrome

	#Test Variables
  timestamp = Time.now.strftime("%m/%d/%Y %I:%M:%S")
  dateonly = Time.now.strftime("%m/%d/%Y")
  loginname = "masterchief@yesco.com"
	password = "MCyesco123"
	resource1 = "Jobs"
  idsearch = "1500"
  namesearch = "Stage Testing"
  customersearch = "1031"
  jobname = "Selenium Test Job #{timestamp}"
  jobtype = "Service"
	activityreason = "Sales"
	activitycontactmethod = "Email"
	activitydescription = "Selenium Test #{timestamp}"
	emailsubject = "Job Email (Selenium) #{timestamp}"
	emailmessage = 'Selenium Test Email Message'

	#Test Classes
	login = ServizioLogin.new(@driver)
	home = ServizioHome.new(@driver)
  jobs = JobsResource.new(@driver)
	activities = ActivitiesResource.new(@driver)
	printemail = PrintEmailResource.new(@driver)

	#Setup
	@driver.navigate.to "https://stage.yesco.com/servizioreact/"
	login.enter_username(loginname)
	login.enter_password(password)
	login.sign_in()

	#Text Examples
  it "Perform a column header search in the ID column" do
    home.open_resource(resource1)
    jobs.search_id(idsearch)

    expect(jobs.top_ref.text).to include(idsearch)
  end

  it "Perform a column header search in the NAME column" do
    jobs.search_reset()
    jobs.search_name(namesearch)

    expect(jobs.top_name.text.downcase).to include(namesearch.downcase)
  end

  it "Create a Job record" do
    jobs.search_reset()
    jobs.new_job(customersearch)
		jobs.name(jobname)
		jobs.type(jobtype)
		jobs.save_close()

		expect(jobs.top_name.text.downcase).to include(jobname.downcase)
  end

  it "Open top record and create an activity" do
    jobs.top_open()
    jobs.create_activity()
    activities.reason(activityreason)
    activities.contact_method(activitycontactmethod)
    activities.description(activitydescription)
    activities.save_close()

    expect(jobs.top_activity_description.text.downcase).to include(activitydescription.downcase)

    jobs.cancel()
  end

  it "Open top record and email" do
    jobs.top_open()
    jobs.print_email()
    printemail.email_from(loginname)
    printemail.email_subject(emailsubject)
    printemail.email_message(emailmessage)
    printemail.email_close()
    jobs.cancel()
    sleep(2)
  end

  it "Make top record inactive using grid actions" do
    toprecord = jobs.top_ref.text
    jobs.make_inactive()

    expect(jobs.top_ref.text).not_to eql(toprecord)
  end

end
