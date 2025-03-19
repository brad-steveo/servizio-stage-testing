require "selenium-webdriver"
require "rspec"
require "require_all"
require_all "/Users/Brad/Documents/YESCO Stage Testing/servizio-stage-testing/React Tests/#Classes"

describe "Estimates Test" do

  @driver = Selenium::WebDriver.for :chrome

  #Test Variables
  timestamp = Time.now.strftime("%m/%d/%Y %I:%M:%S")
  dateonly = Time.now.strftime("%m/%d/%Y")
  loginname = "masterchief@yesco.com"
  password = "MCyesco123"
  resource1 = "Estimates"
  idsearch = "1285"
  namesearch = "Selenium Job"
  customername = "Selenium Test Customer"
  estimatename = "Selenium Estimate #{timestamp}"
  estimatetype = "Time and Material Service"
  activityreason = "Sales"
  activitycontactmethod = "Email"
  activitydescription = "Selenium Test #{timestamp}"
  emailsubject = "Estimate Email (Selenium) #{timestamp}"
  emailmessage = "Selenium Test Email Message"

  #Test Classes
  login = ServizioLogin.new(@driver)
  home = ServizioHome.new(@driver)
  estimates = EstimatesResource.new(@driver)
  activities = ActivitiesResource.new(@driver)
  printemail = PrintEmailResource.new(@driver)

  #Setup
  @driver.navigate.to "https://stage.yesco.com/servizioreact/"
  login.enter_username(loginname)
  login.enter_password(password)
  login.sign_in()

  #Text Examples
  it "Open the Estimates Resource" do
		home.open_resource(resource1)
		recordtest = estimates.top_ref.text
		expect(recordtest).not_to eql("")
	end

	it "Export the Estimates grid" do
		estimates.export_grid()
	end

  it "Perform a column header search in the ID column" do
    estimates.search_id(idsearch)

    expect(estimates.top_ref.text.downcase).to include(idsearch.downcase)
    estimates.search_reset()
  end

  it "Perform a column header search in the NAME column" do
    estimates.search_name(namesearch)

    expect(estimates.top_name.text.downcase).to include(namesearch.downcase)
    estimates.search_reset()
  end

  it "Create an Estimate record" do
    estimates.new_estimate(customername)
    estimates.name(estimatename)
    estimates.type(estimatetype)
    estimates.add_lines_template()
    estimates.save_close()

    expect(estimates.top_name.text.downcase).to include(estimatename.downcase)
  end

  it "Open top record and create an activity" do
    estimates.top_open()
    estimates.create_activity()
    activities.reason(activityreason)
    activities.contact_method(activitycontactmethod)
    activities.description(activitydescription)
    activities.save_close()

    expect(estimates.top_activity_description.text.downcase).to include(activitydescription.downcase)

    estimates.cancel()
  end

  it "Open top record and email" do
    estimates.top_open()
    estimates.print_email()
    printemail.email_from(loginname)
    printemail.email_subject(emailsubject)
    printemail.email_message(emailmessage)
    printemail.email_close()
    estimates.cancel()
    estimates.resource_refresh()

    expect(estimates.top_sent.text).not_to eql("")
  end

  it "Make top record inactive using grid actions" do
    toprecord = estimates.top_ref.text
    estimates.make_inactive()

    expect(estimates.top_ref.text).not_to eql(toprecord)
  end

end
