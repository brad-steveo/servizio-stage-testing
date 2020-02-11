require "selenium-webdriver"
require "rspec"
require "require_all"
require_all "#Classes"

describe "Invoice Email Test" do
	it "Opens specified invoice and sends an email" do
	#Invoice must have been synced to QBO for the print/email option to be visible

		@driver = Selenium::WebDriver.for :chrome

		#Test Variables
		timestamp = Time.now.strftime("%m/%d/%Y %I:%M:%S")
		loginname = "seleniumuser@yesco.com"
		password = "SUyesco123"
		invoicerefnumber = '1304'
		emailaddress = ', bstevenson@yesco.com'
		emailsubject = "Invoice Email (Selenium) #{timestamp}"

		#Go to page
		@driver.navigate.to "https://stage.yesco.com/servizio/"

		#Logging in
		login = ServizioLoginPage.new(@driver)
		login.enter_loginname(loginname)
		login.enter_password(password)
		login.sign_in()

		#Open job and send email
		invoices = InvoicesResource.new(@driver)
		printemail = PrintEmailPage.new(@driver)
		invoices.open_invoices()
		invoices.search_invoiceid(invoicerefnumber)
		invoices.top_open()
		invoices.actions()
		invoices.actions_printemail()
		printemail.additional_notes()
		printemail.ok()
		printemail.email_address(emailaddress)
		printemail.email_subject(emailsubject)
		printemail.email_close()

		sleep(2)

		invoices.cancel()

	end
end
