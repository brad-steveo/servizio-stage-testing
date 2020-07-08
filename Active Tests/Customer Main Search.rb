require "selenium-webdriver"
require "rspec"
require "require_all"
require_all "#Classes"

describe "Performes a search in the Customers resource" do
	it "Verifies that the search returns the proper records" do

		@driver = Selenium::WebDriver.for :chrome

		#Test Variables
		timestamp = Time.now.strftime("%m/%d/%Y %I:%M:%S")
		loginname = "masterchief@yesco.com"
		password = "MCyesco123"
		searchcustomer = "06/25/2019"

		#Go to page
		@driver.navigate.to "https://stage.yesco.com/servizio/"

		#Logging in
		login = ServizioLoginPage.new(@driver)
		login.enter_loginname(loginname)
		login.enter_password(password)
		login.sign_in()

    #Click on Customers and use Google Search
		customers = CustomersResource.new(@driver)
		customers.open_customers()
		customers.search_customer(searchcustomer)

		print "Customers Search: \n"
		print "%s \n" % customers.top.text
		print "\n"
		expect(customers.top.text.downcase).to include(searchcustomer.downcase)

	end
end
