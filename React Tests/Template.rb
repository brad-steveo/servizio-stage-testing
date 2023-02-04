require "selenium-webdriver"
require "rspec"
require "require_all"
require_all "#Classes"

describe "Test Name" do

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
	it "Create a Customer record" do
		home.open_resource(resource1)

		customers.new_customer()
		customers.name(customername)
		customers.dba_name(dbaname)
		customers.stage(stage)
		customers.patrol_type(patroltype)
		customers.timezone(timezone)
		customers.special_instructions(specialinstructions)
		customers.patrol_instructions(patrolinstructions)
		customers.phone(customerphone)
		customers.billing_name(billname)
		customers.billing_street(billstreet)
		customers.billing_city(billcity)
		customers.billing_state(billstate)
		customers.billing_zip(billzip)
		customers.copy_to_site()
		customers.save_close()
	
		expect(customers.top_name.text.downcase).to include(customername.downcase)
	  end
end
