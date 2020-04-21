require "selenium-webdriver"
require "rspec"
require "require_all"
require_all "#Classes"

describe "Performes a column header search in each resource for the ID and Name columns" do
	it "Verifies that the search returns the proper amount of records" do

		@driver = Selenium::WebDriver.for :chrome

		# Test Variables
		timestamp = Time.now.strftime("%m/%d/%Y %I:%M:%S")
		loginname = "masterchief@yesco.com"
		password = "MCyesco123"
		searchactivityid = "1100"
		searchactivitydescription = "02/22/2019 12:22:22"
		searchpatrolid = "1001"
		searchpatrolname = "parleys"
		searchjobid = "1001"
		searchjobname = "status"
		searchestimateid = "1001"
		searchestimatename = "approved"
		searchinvoiceid = "1001"
		searchinvoicename = "kreme"
		searchcustomerid = "1001"
		searchcustomername = "rite"
		searchjoblineid = "1024"
		searchjoblinejobname = "selenium"
		searchinvoicelineid = "1010"
		searchinvoicelineinvoiceid = "1016"
		searchdocumentname = ""
		searchdocumentextension = ""

		# Go to page
		@driver.navigate.to "https://stage.yesco.com/servizio/"

		# Logging in
		login = ServizioLoginPage.new(@driver)
		login.enter_loginname(loginname)
		login.enter_password(password)
		login.sign_in()

		buffers = Buffers.new(@driver)

		# Click on Activities and search columns
		activities = ActivitiesResource.new(@driver)
		activities.open_activities()
		buffers.ajax_buffer()
		activities.search_activityid(searchactivityid)
		buffers.ajax_buffer()
		print "Activities Search (ID): \n"
		print "%s \n" % activities.top_refnumber.text
		print "\n"
		expect(activities.top_refnumber.text).to include(searchactivityid)

		activities.search_reset()
		buffers.ajax_buffer()
		activitieswait = Selenium::WebDriver::Wait.new(:timeout => 5)
		activitieswait.until {activities.search_activityid_field['value'].empty? == true}

		activities.search_activitydescription(searchactivitydescription)
		buffers.ajax_buffer()
		print "Activities Search (DESCRIPTION): \n"
		print "%s \n" % activities.top_description.text
		print "\n"
		expect(activities.top_description.text.downcase).to include(searchactivitydescription)

		# Click on Patrols and search columns
		patrols = PatrolsResource.new(@driver)
		patrols.open_patrols()
		buffers.ajax_buffer()
		patrols.search_patrolid(searchpatrolid)
		buffers.ajax_buffer()
		print "Patrols Search (ID): \n"
		print "%s \n" % patrols.top_refnumber.text
		print "\n"
		expect(patrols.top_refnumber.text).to include(searchpatrolid)

		patrols.search_reset()
		buffers.ajax_buffer()
		patrolswait = Selenium::WebDriver::Wait.new(:timeout => 5)
		patrolswait.until {patrols.search_patrolid_field['value'].empty? == true}

		patrols.search_patrolname(searchpatrolname)
		buffers.ajax_buffer()
		print "Patrols Search (NAME): \n"
		print "%s \n" % patrols.top.text
		print "\n"
		expect(patrols.top.text.downcase).to include(searchpatrolname)

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

		# Click on Estimates and search columns
		estimates = EstimatesResource.new(@driver)
		estimates.open_estimates()
		buffers.ajax_buffer()
		estimates.search_estimateid(searchestimateid)
		buffers.ajax_buffer()
		print "Estimates Search (ID): \n"
		print "%s \n" % estimates.top_refnumber.text
		print "\n"
		expect(estimates.top_refnumber.text).to include(searchestimateid)

		estimates.search_reset()
		buffers.ajax_buffer()
		estimateswait = Selenium::WebDriver::Wait.new(:timeout => 5)
		estimateswait.until {estimates.search_estimateid_field['value'].empty? == true}

		estimates.search_estimatename(searchestimatename)
		buffers.ajax_buffer()
		print "Estimates Search (NAME): \n"
		print "%s \n" % estimates.top.text
		print "\n"
		expect(estimates.top.text.downcase).to include(searchestimatename)

		# Click on Invoices and search columns
		invoices = InvoicesResource.new(@driver)
		invoices.open_invoices()
		buffers.ajax_buffer()
		invoices.search_invoiceid(searchinvoiceid)
		buffers.ajax_buffer()
		print "Invoices Search (ID): \n"
		print "%s \n" % invoices.top_refnumber.text
		print "\n"
		expect(invoices.top_refnumber.text).to include(searchinvoiceid)

		invoices.search_reset()
		buffers.ajax_buffer()
		invoiceswait = Selenium::WebDriver::Wait.new(:timeout => 5)
		invoiceswait.until {invoices.search_invoiceid_field['value'].empty? == true}

		invoices.search_invoicename(searchinvoicename)
		buffers.ajax_buffer()
		print "Invoices Search (NAME): \n"
		print "%s \n" % invoices.top.text
		print "\n"
		expect(invoices.top.text.downcase).to include(searchinvoicename)

		# Click on Customers and search columns
		customers = CustomersResource.new(@driver)
		customers.open_customers()
		buffers.ajax_buffer()
		customers.search_customerid(searchcustomerid)
		buffers.ajax_buffer()
		print "Customers Search (ID): \n"
		print "%s \n" % customers.top_refnumber.text
		print "\n"
		expect(customers.top_refnumber.text).to include(searchcustomerid)

		customers.search_reset()
		buffers.ajax_buffer()
		customerswait = Selenium::WebDriver::Wait.new(:timeout => 5)
		customerswait.until {customers.search_customerid_field['value'].empty? == true}

		customers.search_customername(searchcustomername)
		buffers.ajax_buffer()
		print "Customers Search (NAME): \n"
		print "%s \n" % customers.top.text
		print "\n"
		expect(customers.top.text.downcase).to include(searchcustomername)

		# Click on Settings > Job Lines and search columns
		settings = SettingsResource.new(@driver)
		settings.open_settings()
		settings.open_joblines()
		buffers.ajax_buffer()
		joblines = JobLinesResource.new(@driver)
		joblines.search_id(searchjoblineid)
		buffers.ajax_buffer()
		print "Job Lines Search (ID): \n"
		print "%s \n" % joblines.top_refnumber.text
		print "\n"
		expect(joblines.top_refnumber.text).to include(searchjoblineid)

		joblines.search_reset()
		buffers.ajax_buffer()
		joblineswait = Selenium::WebDriver::Wait.new(:timeout => 5)
		joblineswait.until {joblines.search_id_field['value'].empty? == true}

		joblines.search_jobname(searchjoblinejobname)
		buffers.ajax_buffer()
		print "Job Lines Search (NAME): \n"
		print "%s \n" % joblines.top_jobname.text
		print "\n"
		expect(joblines.top_jobname.text.downcase).to include(searchjoblinejobname.downcase)

		# Click on Settings > Invoice Lines and search columns
		settings.open_settings()
		settings.open_invoicelines()
		buffers.ajax_buffer()
		invoicelines = InvoiceLinesResource.new(@driver)
		invoicelines.search_id(searchinvoicelineid)
		print "Invoice Lines Search (ID): \n"
		print "%s \n" % invoicelines.top_refnumber.text
		print "\n"
		expect(invoicelines.top_refnumber.text).to include(searchinvoicelineid)

		invoicelines.search_reset()
		buffers.ajax_buffer()
		invoicelineswait = Selenium::WebDriver::Wait.new(:timeout => 5)
		invoicelineswait.until {invoicelines.search_id_field['value'].empty? == true}

		invoicelines.search_invoiceid(searchinvoicelineinvoiceid)
		buffers.ajax_buffer()
		print "Invoice Lines Search (NAME): \n"
		print "%s \n" % invoicelines.top_invoiceid.text
		print "\n"
		expect(invoicelines.top_invoiceid.text).to include(searchinvoicelineinvoiceid)

		# Click on Settings > Documents and search columns
		settings.open_settings()
		settings.open_documents()
		buffers.ajax_buffer()
		documents = DocumentsResource.new(@driver)
		documents.search_documentname(searchdocumentname)
		print "Documents Search (NAME): \n"
		print "%s \n" % documents.top_name.text
		print "\n"
		expect(documents.top_name.text).to include(searchdocumentname)

		documents.search_reset()
		buffers.ajax_buffer()
		documentswait = Selenium::WebDriver::Wait.new(:timeout => 5)
		documentswait.until {documents.search_documentname_field['value'].empty? == true}

		documents.search_documentextension(searchdocumentextension)
		buffers.ajax_buffer()
		print "Documents Search (EXTENSION): \n"
		print "%s \n" % documents.top_extension.text
		print "\n"
		expect(documents.top_extension.text).to include(searchdocumentextension)

	end
end
