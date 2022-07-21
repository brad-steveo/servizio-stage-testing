require "selenium-webdriver"
require "rspec"
require "require_all"
require_all "#Classes"

describe "Job Main Search" do
	it "Performes a global search in the Jobs resource" do

		@driver = Selenium::WebDriver.for :chrome

		#Test Variables
		timestamp = Time.now.strftime("%m/%d/%Y %I:%M:%S")
		loginname = "masterchief@yesco.com"
		password = "MCyesco123"
		searchjob = "06/25/2019"

		#Go to page
		@driver.navigate.to "https://stage.yesco.com/servizio/"

		#Logging in
		login = ServizioLoginPage.new(@driver)
		login.enter_loginname(loginname)
		login.enter_password(password)
		login.sign_in()

    #Click on Jobs and use Google Search
		jobs = JobsResource.new(@driver)
		jobs.open_jobs()
		jobs.search_job(searchjob)

		print "Jobs Search: \n"
		print "%s \n" % jobs.top.text
		print "\n"
		expect(jobs.top.text.downcase).to include(searchjob.downcase)

	end
end
