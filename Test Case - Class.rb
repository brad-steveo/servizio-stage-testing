require "selenium-webdriver"
require "rspec"
require_relative "Class - Login Page.rb"
require_relative "Class - Settings Page.rb"
require_relative "Class - Contacts Resource.rb"
require_relative "Class - Patrols Resource.rb"
require_relative "Class - Jobs Resource.rb"
require_relative "Class - Estimates Resource.rb"
require_relative "Class - Activities Resource.rb"
require_relative "Class - PrintEmail Page.rb"
require_relative "Class - Job Lines Resource.rb"
require_relative "Class - Invoice Lines Resource.rb"

describe "Class Testing" do
	it "Tests class variables and methods" do

		@driver = Selenium::WebDriver.for :chrome

		# Test Variables
		timestamp = Time.now.strftime("%m/%d/%Y %I:%M:%S")
		loginname = "masterchief@yesco.com"
		password = "yesco123"
		searchjoblineid = "1024"
		searchjoblinejobname = "Stage Test"
		searchinvoicelineid = "1010"
		searchinvoicelineinvoiceid = "1016"

		# Go to page
		@driver.navigate.to "https://stage.yesco.com/servizio/"

		# Logging in
		login = ServizioLoginPage.new(@driver)
		login.enter_loginname(loginname)
		login.enter_password(password)
		login.sign_in()

		# Click on Settings > Job Lines and search columns
		settings = SettingsResource.new(@driver)
		settings.open_settings()
		settings.open_joblines()
		joblines = JobLinesResource.new(@driver)
		joblines.search_id(searchjoblineid)
		print "Job Lines Search (ID): \n"
		print "%s \n" % joblines.top_refnumber.text
		print "\n"
		expect(joblines.top_refnumber.text).to include(searchjoblineid)

		joblines.search_reset()
		sleep(2)
		joblines.search_jobname(searchjoblinejobname)
		print "Job Lines Search (NAME): \n"
		print "%s \n" % joblines.top_jobname.text
		print "\n"
		expect(joblines.top_jobname.text).to include(searchjoblinejobname)

		# Click on Settings > Invoice Lines and search columns
		settings.open_settings()
		settings.open_invoicelines()
		invoicelines = InvoiceLinesResource.new(@driver)
		invoicelines.search_id(searchinvoicelineid)
		print "Invoice Lines Search (ID): \n"
		print "%s \n" % invoicelines.top_refnumber.text
		print "\n"
		expect(invoicelines.top_refnumber.text).to include(searchinvoicelineid)

		invoicelines.search_reset()
		sleep(2)
		invoicelines.search_invoiceid(searchinvoicelineinvoiceid)
		print "Invoice Lines Search (NAME): \n"
		print "%s \n" % invoicelines.top_invoiceid.text
		print "\n"
		expect(invoicelines.top_invoiceid.text).to include(searchinvoicelineinvoiceid)

	end
end
