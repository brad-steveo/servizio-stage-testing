require "selenium-webdriver"
require "rspec"
require "require_all"
require_all "#Classes"

describe "Performes a search in the Invoices resource" do
	it "Verifies that the search returns the proper records" do

		@driver = Selenium::WebDriver.for :chrome

		#Test Variables
		timestamp = Time.now.strftime("%m/%d/%Y %I:%M:%S")
		loginname = "test123255@yesco.com"
		password = "THyesco123"
		searchinvoice = "Test 9"

		#Go to page
		@driver.navigate.to "https://stage.yesco.com/servizio/"

		#Logging in
		login = ServizioLoginPage.new(@driver)
		login.enter_loginname(loginname)
		login.enter_password(password)
		login.sign_in()

    #Click on Invoices and use Google Search
		invoices = InvoicesResource.new(@driver)
		invoices.open_invoices()
		invoices.search_invoice(searchinvoice)

		print "Invoices Search: \n"
		print "%s \n" % invoices.top_jobname.text
		print "\n"
		expect(invoices.top_jobname.text.downcase).to include(searchinvoice.downcase)

	end
end
