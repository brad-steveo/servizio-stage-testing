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
	resource1 = "Patrols"
	activityreason = "Sales"
	activitycontactmethod = "Email"
	activitydescription = "Selenium Test #{timestamp}"

	#Test Classes
	login = ServizioLogin.new(@driver)
	home = ServizioHome.new(@driver)
	patrols = PatrolsResource.new(@driver)
	activities = ActivitiesResource.new(@driver)

	#Setup
	@driver.navigate.to "https://stage.yesco.com/servizioreact/"
	login.enter_username(loginname)
	login.enter_password(password)
	login.sign_in()

	#Text Examples
	it "Open top patrol and create an activity" do
		home.open_resource(resource1)

		currentsent = patrols.top_sent.text
		patrols.top_open()
		patrols.print_email()
		printemail.email_from(emailaddressfrom)
		printemail.email_subject(emailsubject)
		printemail.email_message(emailmessage)
		printemail.save_close()
		patrols.save_close()

		expect(patrols.top_sent.text).not_to eql(currentsent)
	end

end
