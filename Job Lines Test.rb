require "selenium-webdriver"
require "rspec"
require_relative "Class - Login Page.rb"
require_relative "Class - Settings Page.rb"
require_relative "Class - Job Lines Resource.rb"
require_relative "Class - Jobs Resource.rb"

describe "Opens Jobs resource and adds a line item" do
	it "Checks Job Lines resource and verifies top job line" do

		@driver = Selenium::WebDriver.for :chrome

		# Test Variables
		timestamp = Time.now.strftime("%m/%d/%Y %I:%M:%S")
		loginname = "masterchief@yesco.com"
		password = "yesco123"
    description1 = "Test1234"

		# Go to page
		@driver.navigate.to "https://stage.yesco.com/servizio/"

		# Logging in
		login = ServizioLoginPage.new(@driver)
		login.enter_loginname(loginname)
		login.enter_password(password)
		login.sign_in()

    # Open job and add a description line item
    jobs = JobsResource.new(@driver)
    jobs.open_jobs()
    jobs.top_open()
    jobs.line1_delete()
    jobs.add_lines()
    jobs.line1_description(description1)
    jobs.save_close()

    # Open Settings > Job Lines and verifying line item
    settings = SettingsResource.new(@driver)
    settings.open_settings()
    settings.open_joblines()

    joblines = JobLinesResource.new(@driver)
    print joblines.top_description.text
    expect(joblines.top_description.text).to eql(description1)

	end
end
