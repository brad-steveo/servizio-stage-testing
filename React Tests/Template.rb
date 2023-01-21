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
	resource1 = "Jobs"
	idsearch = "1500"
	namesearch = "Stage Testing"
	customersearch = "1031"
	jobname = "Selenium Test Job #{timestamp}"
	jobtype = "Service"

	#Test Classes
	login = ServizioLogin.new(@driver)
	home = ServizioHome.new(@driver)
	patrols = PatrolsResource.new(@driver)
	estimates = EstimatesResource.new(@driver)
	jobs = JobsResource.new(@driver)
	activities = ActivitiesResource.new(@driver)
	printemail = PrintEmailResource.new(@driver)

	#Setup
	@driver.navigate.to "https://stage.yesco.com/servizioreact/"
	login.enter_username(loginname)
	login.enter_password(password)
	login.sign_in()

	#Text Examples
	it "Make Inactive" do
    home.open_resource(resource1)
		toprecord = jobs.top_ref.text
    jobs.make_inactive()

    expect(jobs.top_ref.text).not_to eql(toprecord)
	end
end
