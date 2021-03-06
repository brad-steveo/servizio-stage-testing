require "selenium-webdriver"
require "rspec"
require "require_all"
require_all "#Classes"

describe "Invoice Creation and NetSuite Sync" do
	it "Creates an invoice and attempts a sync to NetSuite" do

		@driver = Selenium::WebDriver.for :chrome

		#Test Variables
		timestamp = Time.now.strftime("%m/%d/%Y %I:%M:%S")
		loginname = "seleniumnsuser@yesco.com"
		password = "SUyesco123"
		selectjob = "Selenium Test Job 2020"
		invoiceterms = "1% 15 Net 30"
		lineofbusiness = "Service"
		accountexecutive = "Judd Williams"
		ponumber = rand 1000001..9999999
		commissionschedule = "YESCO | T&M Commissions @ 9%"
		i = 0
		loopcount = 4

		#Go to page
		@driver.navigate.to "https://dev.yesco.com/servizio/"

		#Logging in
		login = ServizioLoginPage.new(@driver)
		login.enter_loginname(loginname)
		login.enter_password(password)
		login.sign_in()

		#Invoice Creation
		invoices = InvoicesResource.new(@driver)
		invoices.open_invoices()

		currenttopref = invoices.top_refnumber.text

		invoices.create_invoice()
		invoices.select_jobdev(selectjob)
		invoices.terms(invoiceterms)
		invoices.line_business(lineofbusiness)
		invoices.account_executive(accountexecutive)
		invoices.po_number(ponumber)
		invoices.commission(commissionschedule)
		invoices.save()
		invoices.actions()
		invoices.actions_pushtons()
		invoices.cancel()

		wait = Selenium::WebDriver::Wait.new(:timeout => 20)
		wait.until {invoices.top_refnumber.text != currenttopref}

		def id_refresher()
			invoices = InvoicesResource.new(@driver)

			@driver.navigate.refresh
			wait2 = Selenium::WebDriver::Wait.new(:timeout => 20)
			begin
				wait2.until {invoices.top_nsid.text != ""}
			rescue Selenium::WebDriver::Error::TimeoutError
				false
			end
		end

		loop do
			i += 1
			puts id_refresher()

			if (invoices.top_nsid.text != "") == true
				break
			end

			if i == loopcount
				break
			end
		end

		#NS Sync Verification
		print invoices.top_refnumber.text
		print "\nNS Invoice Number: "
		print invoices.top_nsid.text
		expect(invoices.top_nsid.text).not_to eq("")

	end
end
