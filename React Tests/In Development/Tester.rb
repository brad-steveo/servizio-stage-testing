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
	resource1 = "Customers"
	customername = "Selenium Customer #{timestamp}"
	dbaname = "YESCO"
	stage = "Customer"
	patroltype = "Yes"
	timezone = "(UTC-07:00) Mountain Time (US & Canada)"
	specialinstructions = "Customer special instructions #{timestamp}"
	patrolinstructions = "Patroller instructions #{timestamp}"
	customerphone = "123.456.7890"
	billname = "YESCO"
	billstreet = "2401 Foothill Dr."
	billcity = "Salt Lake City"
	billstate = "Utah"
	billzip = "84109"
	activityreason = "Sales"
	activitycontactmethod = "Email"
	activitydescription = "Selenium Test #{timestamp}"

	#Test Classes
	login = ServizioLogin.new(@driver)
	home = ServizioHome.new(@driver)
	patrols = PatrolsResource.new(@driver)
	estimates = EstimatesResource.new(@driver)
	jobs = JobsResource.new(@driver)
	customers = CustomersResource.new(@driver)
	activities = ActivitiesResource.new(@driver)
	printemail = PrintEmailResource.new(@driver)

	#Setup
	@driver.navigate.to "https://stage.yesco.com/servizioreact/"
	login.enter_username(loginname)
	login.enter_password(password)
	login.sign_in()

	#Text Examples
	  it "Open top record and create an activity" do
		home.open_resource(resource1)

		customers.top_open()
		customers.create_activity()
		activities.reason(activityreason)
		activities.contact_method(activitycontactmethod)
		activities.description(activitydescription)
		activities.save_close()
	
		expect(customers.top_activity_description.text.downcase).to include(activitydescription.downcase)
	
		customers.cancel()
	  end
end
