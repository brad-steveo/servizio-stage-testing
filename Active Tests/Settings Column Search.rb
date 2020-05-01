require "selenium-webdriver"
require "rspec"
require "require_all"
require_all "#Classes"

describe "Performes a column header search in various Settings resources" do
	it "Verifies that the search returns the proper amount of records" do

		@driver = Selenium::WebDriver.for :chrome

		# Test Variables
		timestamp = Time.now.strftime("%m/%d/%Y %I:%M:%S")
		loginname = "masterchief@yesco.com"
		password = "MCyesco123"
    searchjoblineid = "1024"
		searchjoblinejobname = "selenium"
		searchinvoicelineid = "1010"
		searchinvoicelineinvoiceid = "1016"
		searchdocumentname = "20200325171116"
		searchdocumentextension = "png"

		# Go to page
		@driver.navigate.to "https://stage.yesco.com/servizio/"

		# Logging in
		login = ServizioLoginPage.new(@driver)
		login.enter_loginname(loginname)
		login.enter_password(password)
		login.sign_in()

		buffers = Buffers.new(@driver)

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
