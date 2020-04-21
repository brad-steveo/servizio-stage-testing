require "selenium-webdriver"
require "rspec"
require "require_all"
require_all "#Classes"

describe "Invoice Creation and QBO Sync" do
	it "Creates an invoice and attempts a sync to QBO" do

		@driver = Selenium::WebDriver.for :chrome

		#Test Variables
		timestamp = Time.now.strftime("%m/%d/%Y %I:%M:%S")
		loginname = "seleniumuser@yesco.com"
		password = "SUyesco123"
		selectjob = "Selenium Test Job"
		invoiceterms = "Net 30"
		ponumber = rand 1000001..9999999
		invoicelocation = "Test Location"
		accountexecutive = "Tested Hansen"
		i = 0
		loopcount = 5

		#Go to page
		@driver.navigate.to "https://stage.yesco.com/servizio/"

		#Logging in
		login = ServizioLoginPage.new(@driver)
		login.enter_loginname(loginname)
		login.enter_password(password)
		login.sign_in()

		buffers = Buffers.new(@driver)

		#Invoice Creation
		invoices = InvoicesResource.new(@driver)
		invoices.open_invoices()

		currenttopref = invoices.top_refnumber.text

		invoices.create_invoice()
		invoices.select_job(selectjob)
		invoices.terms(invoiceterms)
		invoices.po_number(ponumber)
		invoices.location(invoicelocation)
		invoices.account_executive(accountexecutive)
		invoices.save()
		invoices.actions()
		invoices.actions_pushtoqbo()
		buffers.ajax_buffer()
		invoices.cancel()

		wait = Selenium::WebDriver::Wait.new(:timeout => 5)
		wait.until {invoices.top_refnumber.text != currenttopref}

		def id_refresher()
			invoices = InvoicesResource.new(@driver)

			@driver.navigate.refresh
			wait2 = Selenium::WebDriver::Wait.new(:timeout => 10)
			begin
				wait2.until {invoices.top_qbid.text != ""}
			rescue Selenium::WebDriver::Error::TimeoutError
				false
			end
		end

		loop do
			i += 1
			puts id_refresher()

			if (invoices.top_qbid.text != "") == true
				break
			end

			if i == loopcount
				break
			end
		end

		#QBO Sync Verification
		print "Invoice: %s" % invoices.top_refnumber.text
		print "\nQBID: "
		print invoices.top_qbid.text
		expect(invoices.top_qbid.text).not_to eq("")

	end
end
