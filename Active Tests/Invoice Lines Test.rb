require "selenium-webdriver"
require "rspec"
require "require_all"
require_all "#Classes"

describe "Opens Invoices resource and adds a line item" do
	it "Checks Invoice Lines resource and verifies top invoice line" do

		@driver = Selenium::WebDriver.for :chrome

		#Test Variables
		timestamp = Time.now.strftime("%m/%d/%Y %I:%M:%S")
		loginname = "seleniumuser@yesco.com"
		password = "SUyesco123"
		invoiceid = "1245"
    description1 = "Test1234 #{timestamp}"

		#Go to page
		@driver.navigate.to "https://stage.yesco.com/servizio/"

		#Logging in
		login = ServizioLoginPage.new(@driver)
		login.enter_loginname(loginname)
		login.enter_password(password)
		login.sign_in()

    #Open unsynced invoice and add a description line item
    invoices = InvoicesResource.new(@driver)
    invoices.open_invoices()
		invoices.search_invoiceid(invoiceid)
    invoices.top_open()
		sleep(1)
    invoices.line2_delete()
    invoices.add_description()
		sleep(1)
    invoices.line2_description(description1)
    invoices.save_close()

    #Open Settings > Invoice Lines and verifying line item
    settings = SettingsResource.new(@driver)
    settings.open_settings()
    settings.open_invoicelines()

		sleep(2)

    invoicelines = InvoiceLinesResource.new(@driver)
    print invoicelines.top_description.text
    expect(invoicelines.top_description.text).to eql(description1)

	end
end
