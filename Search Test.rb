require "selenium-webdriver"
require "rspec"
require_relative "Class - Login Page.rb"
require_relative "Class - Patrols Resource.rb"
require_relative "Class - Jobs Resource.rb"
require_relative "Class - Estimates Resource.rb"
require_relative "Class - Invoices Resource.rb"
require_relative "Class - Customers Resource.rb"
require_relative "Class - Settings Page.rb"
require_relative "Class - Job Lines Resource.rb"
require_relative "Class - Invoice Lines Resource.rb"

describe "Performes a search in each resource" do
	it "Verifies that the search returns the proper amount of records" do

		@driver = Selenium::WebDriver.for :chrome

		#Test Variables
		timestamp = Time.now.strftime("%m/%d/%Y %I:%M:%S")
		loginname = "masterchief@yesco.com"
		password = "yesco123"
		searchpatrol = "06/25/2019"
		searchjob = "06/25/2019"
		searchestimate = "06/25/2019"
		searchinvoice = "06/12/2019"
		searchcustomer = "06/25/2019"
		searchjoblines = "stage"
		searchinvoicelines = "bombay"

		#Go to page
		@driver.navigate.to "https://stage.yesco.com/servizio/"

		#Logging in
		login = ServizioLoginPage.new(@driver)
		login.enter_loginname(loginname)
		login.enter_password(password)
		login.sign_in()

		# Click on Patrols and use Google Search
		patrols = PatrolsResource.new(@driver)
		patrols.open_patrols()
		patrols.search_patrol(searchpatrol)

		print "Patrols Search: \n"
		print "%s \n" % patrols.top.text + patrols.top_customer.text
		print "\n"
		print "\n"
		expect(patrols.top.text.downcase + patrols.top_customer.text.downcase).to include(searchpatrol.downcase)

		# Click on Jobs and use Google Search
		jobs = JobsResource.new(@driver)
		jobs.open_jobs()
		jobs.search_job(searchjob)

		print "Jobs Search: \n"
		print "%s \n" % jobs.top.text
		print "\n"
		expect(jobs.top.text.downcase).to include(searchjob.downcase)

		# Click on Estimates and use Google Search
		estimates = EstimatesResource.new(@driver)
		estimates.open_estimates()
		estimates.search_estimate(searchestimate)

		print "Estimates Search: \n"
		print "%s \n" % estimates.top.text
		print "\n"
		expect(estimates.top.text.downcase).to include(searchestimate.downcase)

		# Click on Invoices and use Google Search
		invoices = InvoicesResource.new(@driver)
		invoices.open_invoices()
		invoices.search_invoice(searchinvoice)

		print "Invoices Search: \n"
		print "%s \n" % invoices.top_jobname.text
		print "\n"
		expect(invoices.top_jobname.text.downcase).to include(searchinvoice.downcase)

		# Click on Customers and use Google Search
		customers = CustomersResource.new(@driver)
		customers.open_customers()
		customers.search_customer(searchcustomer)

		print "Customers Search: \n"
		print "%s \n" % customers.top.text
		print "\n"
		expect(customers.top.text.downcase).to include(searchcustomer.downcase)

		# Click on Settings > Job Lines and use Google Search
		settings = SettingsResource.new(@driver)
		settings.open_settings()
		settings.open_joblines()
		joblines = JobLinesResource.new(@driver)
		joblines.search_joblines(searchjoblines)

		print "Job Lines Search: \n"
		print "%s \n" % joblines.top_jobname.text
		print "\n"
		expect(joblines.top_jobname.text.downcase).to include(searchjoblines.downcase)

		# Click on Settings > Invoice Lines and use Google Search
		settings.open_settings()
		settings.open_invoicelines()
		invoicelines = InvoiceLinesResource.new(@driver)
		invoicelines.search_invoicelines(searchinvoicelines)

		print "Invoice Lines Search: \n"
		print "%s \n" % invoicelines.top_customername.text
		print "\n"
		expect(invoicelines.top_customername.text.downcase).to include(searchinvoicelines.downcase)

	end
end
