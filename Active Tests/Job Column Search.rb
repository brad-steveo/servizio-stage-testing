require "selenium-webdriver"
require "rspec"
require "require_all"
require_all "#Classes"

describe "Job Column Search" do
	it "Performes a column header search in the Jobs resource in the ID and Name columns" do

		@driver = Selenium::WebDriver.for :chrome

		# Test Variables
		timestamp = Time.now.strftime("%m/%d/%Y %I:%M:%S")
		loginname = "masterchief@yesco.com"
		password = "MCyesco123"
		searchjobid = "1001"
		searchjobname = "status"

		# Go to page
		@driver.navigate.to "https://stage.yesco.com/servizio/"

		# Logging in
		login = ServizioLoginPage.new(@driver)
		login.enter_loginname(loginname)
		login.enter_password(password)
		login.sign_in()

		buffers = Buffers.new(@driver)

		# Click on Jobs and search columns
		jobs = JobsResource.new(@driver)
		jobs.open_jobs()
		buffers.ajax_buffer()
		jobs.search_jobid(searchjobid)
		buffers.ajax_buffer()
		print "Jobs Search (ID): \n"
		print "%s \n" % jobs.top_refnumber.text
		print "\n"
		expect(jobs.top_refnumber.text).to include(searchjobid)

		jobs.search_reset()
		buffers.ajax_buffer()
		jobswait = Selenium::WebDriver::Wait.new(:timeout => 5)
		jobswait.until {jobs.search_jobid_field['value'].empty? == true}

		jobs.search_jobname(searchjobname)
		buffers.ajax_buffer()
		print "Jobs Search (NAME): \n"
		print "%s \n" % jobs.top.text
		print "\n"
		expect(jobs.top.text.downcase).to include(searchjobname)

	end
end
