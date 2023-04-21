require "selenium-webdriver"
require "rspec"
require "require_all"
require_all "/Users/Brad/Documents/YESCO Stage Testing/servizio-stage-testing/React Tests/#Classes"

describe "Single Example Test" do

	@driver = Selenium::WebDriver.for :chrome

	#Test Variables
  	timestamp = Time.now.strftime("%m/%d/%Y %I:%M:%S")
  	dateonly = Time.now.strftime("%m/%d/%Y")
    loginname = "masterchief@yesco.com"
    password = "MCyesco123"
    resource1 = "Jobs"
    description = "Selenium Test Job Line 123"

	#Test Classes
	login = ServizioLogin.new(@driver)
	home = ServizioHome.new(@driver)
	patrols = PatrolsResource.new(@driver)
	estimates = EstimatesResource.new(@driver)
	jobs = JobsResource.new(@driver)
	customers = CustomersResource.new(@driver)
	activities = ActivitiesResource.new(@driver)
	printemail = PrintEmailResource.new(@driver)
	contacts = ContactsResource.new(@driver)

	#Setup
	@driver.navigate.to "https://stage.yesco.com/servizioreact/"
	login.enter_username(loginname)
	login.enter_password(password)
	login.sign_in()

	#Text Examples
    it "Open the Contacts Resource" do
        home.open_resource(resource1)
        jobs.top_open()
        jobs.top_line(description)
    end

end
