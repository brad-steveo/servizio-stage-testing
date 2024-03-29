require "selenium-webdriver"
require "rspec"
require "require_all"
require_all "#Classes"

describe "Job Lines Test" do
	it "Adds a new line item to a job record and checks for them in the Job Lines resource" do

		@driver = Selenium::WebDriver.for :chrome

		# Test Variables
		timestamp = Time.now.strftime("%m/%d/%Y %I:%M:%S")
		loginname = "masterchief@yesco.com"
		password = "MCyesco123"
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
