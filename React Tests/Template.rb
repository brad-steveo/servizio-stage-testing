require "selenium-webdriver"
require "rspec"
require "require_all"
require_all "#Classes"

describe "Test Name" do

	@driver = Selenium::WebDriver.for :chrome

	#Test Variables
  timestamp = Time.now.strftime("%m/%d/%Y %I:%M:%S")
  dateonly = Time.now.strftime("%m/%d/%Y")
	loginname = "bstevenson@yesco.com"
	password = "BSyesco2113"
	resource1 = "Estimates"
	activityreason = "Sales"
	activitycontactmethod = "Email"
	activitydescription = "Selenium Test #{timestamp}"
	emailaddressfrom = "bstevenson@yesco.com"
	emailsubject = "Patrol Email (Selenium) #{timestamp}"
	emailmessage = 'Selenium Test Email Message'

	#Test Classes
	login = ServizioLogin.new(@driver)
	home = ServizioHome.new(@driver)
	patrols = PatrolsResource.new(@driver)
	estimates = EstimatesResource.new(@driver)
	activities = ActivitiesResource.new(@driver)
	printemail = PrintEmailResource.new(@driver)

	#Setup
	@driver.navigate.to "https://stage.yesco.com/servizioreact/"
	login.enter_username(loginname)
	login.enter_password(password)
	login.sign_in()

	#Text Examples
	it "Open top patrol and create an activity" do
		home.open_resource(resource1)

		estimates.top_open()
		estimates.print_email()
    printemail.email_from(loginname)
    printemail.email_subject(emailsubject)
    printemail.email_message(emailmessage)
    printemail.email_close()
    estimates.cancel()
    home.close_tab()
    home.resource_search_clear()
    home.open_resource(resource1)

    expect(estimates.top_sent.text).not_to eql("")
	end

end
