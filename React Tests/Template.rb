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
	emailaddressfrom = "bstevenson@yesco.com"
	emailsubject = "Patrol Email (Selenium) #{timestamp}"
	emailmessage = 'Selenium Test Email Message'

	#Test Classes
	login = ServizioLogin.new(@driver)
	home = ServizioHome.new(@driver)
	patrols = PatrolsResource.new(@driver)
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

		toprecord = patrols.top_ref.text
		patrols.make_inactive()

		expect(patrols.top_ref.text).not_to eql(toprecord)

	end

end
