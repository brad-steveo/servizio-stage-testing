require "selenium-webdriver"
require "rspec"
require "require_all"
require_all "Classes"

describe "Performes a column header search in each resource for the ID and Name columns" do
	it "Verifies that the search returns the proper amount of records" do

		@driver = Selenium::WebDriver.for :chrome

		# Test Variables
		timestamp = Time.now.strftime("%m/%d/%Y %I:%M:%S")
		loginname = "masterchief@yesco.com"
		password = "yesco123"
		searchpatrolid = "1001"
		searchpatrolname = "blaine"
		searchjobid = "1001"
		searchjobname = "back light"
		searchestimateid = "1001"
		searchestimatename = "lights out"
		searchinvoiceid = "1001"
		searchinvoicename = "blaine"
		searchcustomerid = "1001"
		searchcustomername = "blaine"
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

		# Click on Patrols and search columns
		patrols = PatrolsResource.new(@driver)
		patrols.open_patrols()
		patrols.search_patrolid(searchpatrolid)
		print "Patrols Search (ID): \n"
		print "%s \n" % patrols.top_refnumber.text
		print "\n"
		expect(patrols.top_refnumber.text).to include(searchpatrolid)

		patrols.search_reset()
		patrols.search_patrolname(searchpatrolname)
		print "Patrols Search (NAME): \n"
		print "%s \n" % patrols.top.text
		print "\n"
		expect(patrols.top.text.downcase).to include(searchpatrolname)

		# Click on Jobs and search columns
		jobs = JobsResource.new(@driver)
		jobs.open_jobs()
		jobs.search_jobid(searchjobid)
		print "Jobs Search (ID): \n"
		print "%s \n" % jobs.top_refnumber.text
		print "\n"
		expect(jobs.top_refnumber.text).to include(searchjobid)

		jobs.search_reset()
		jobs.search_jobname(searchjobname)
		print "Jobs Search (NAME): \n"
		print "%s \n" % jobs.top.text
		print "\n"
		expect(jobs.top.text.downcase).to include(searchjobname)

		# Click on Estimates and search columns
		estimates = EstimatesResource.new(@driver)
		estimates.open_estimates()
		estimates.search_estimateid(searchestimateid)
		print "Estimates Search (ID): \n"
		print "%s \n" % estimates.top_refnumber.text
		print "\n"
		expect(estimates.top_refnumber.text).to include(searchestimateid)

		estimates.search_reset()
		estimates.search_estimatename(searchestimatename)
		print "Estimates Search (NAME): \n"
		print "%s \n" % estimates.top.text
		print "\n"
		expect(estimates.top.text.downcase).to include(searchestimatename)

		# Click on Invoices and search columns
		invoices = InvoicesResource.new(@driver)
		invoices.open_invoices()
		invoices.search_invoiceid(searchinvoiceid)
		print "Invoices Search (ID): \n"
		print "%s \n" % invoices.top_refnumber.text
		print "\n"
		expect(invoices.top_refnumber.text).to include(searchinvoiceid)

		invoices.search_reset()
		invoices.search_invoicename(searchinvoicename)
		print "Invoices Search (NAME): \n"
		print "%s \n" % invoices.top.text
		print "\n"
		expect(invoices.top.text.downcase).to include(searchinvoicename)

		# Click on Customers and search columns
		customers = CustomersResource.new(@driver)
		customers.open_customers()
		customers.search_customerid(searchcustomerid)
		print "Customers Search (ID): \n"
		print "%s \n" % customers.top_refnumber.text
		print "\n"
		expect(customers.top_refnumber.text).to include(searchcustomerid)

		customers.search_reset()
		customers.search_customername(searchcustomername)
		print "Customers Search (NAME): \n"
		print "%s \n" % customers.top.text
		print "\n"
		expect(customers.top.text.downcase).to include(searchcustomername)

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
		joblines.search_jobname(searchjoblinejobname)
		print "Job Lines Search (NAME): \n"
		print "%s \n" % joblines.top_jobname.text
		print "\n"
		expect(joblines.top_jobname.text.downcase).to include(searchjoblinejobname.downcase)

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
		invoicelines.search_invoiceid(searchinvoicelineinvoiceid)
		print "Invoice Lines Search (NAME): \n"
		print "%s \n" % invoicelines.top_invoiceid.text
		print "\n"
		expect(invoicelines.top_invoiceid.text).to include(searchinvoicelineinvoiceid)

	end
end
