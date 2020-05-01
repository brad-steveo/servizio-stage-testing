require "selenium-webdriver"
require "rspec"
require "require_all"
require_all "#Classes"

describe "Performes a column header search in the Invoices resource for the ID and Name columns" do
	it "Verifies that the search returns the proper amount of records" do

		@driver = Selenium::WebDriver.for :chrome

		# Test Variables
		timestamp = Time.now.strftime("%m/%d/%Y %I:%M:%S")
		loginname = "masterchief@yesco.com"
		password = "MCyesco123"
    searchinvoiceid = "1001"
		searchinvoicename = "kreme"

		# Go to page
		@driver.navigate.to "https://stage.yesco.com/servizio/"

		# Logging in
		login = ServizioLoginPage.new(@driver)
		login.enter_loginname(loginname)
		login.enter_password(password)
		login.sign_in()

		buffers = Buffers.new(@driver)

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

	end
end
