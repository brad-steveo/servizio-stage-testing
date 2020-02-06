require "selenium-webdriver"
require "rspec"
require_relative "Class - Login Page.rb"
require_relative "Class - Invoices Resource.rb"

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

		#Go to page
		@driver.navigate.to "https://stage.yesco.com/servizio/"

		#Logging in
		login = ServizioLoginPage.new(@driver)
		login.enter_loginname(loginname)
		login.enter_password(password)
		login.sign_in()

		#Invoice Creation
		invoices = InvoicesResource.new(@driver)
		invoices.open_invoices()
		invoices.create_invoice()
		invoices.select_job(selectjob)
		invoices.terms(invoiceterms)
		invoices.po_number(ponumber)
		invoices.location(invoicelocation)
		invoices.account_executive(accountexecutive)
		invoices.save()
		invoices.actions()
		invoices.actions_pushtoqbo()
		sleep(2)
		invoices.cancel()

		sleep(6)
		@driver.navigate.refresh
		sleep(2)

		#QBO Sync Verification
		print "Invoice: %s" % invoices.top_refnumber.text
		print "\nQBID: "
		print invoices.top_qbid.text
		expect(invoices.top_qbid.text).not_to eq("")

	end
end
