require "selenium-webdriver"
require "rspec"
require "require_all"
require_all "#Classes"

describe "Performes a column header search in the Customers resource for the ID and Name columns" do
	it "Verifies that the search returns the proper amount of records" do

		@driver = Selenium::WebDriver.for :chrome

		# Test Variables
		timestamp = Time.now.strftime("%m/%d/%Y %I:%M:%S")
		loginname = "masterchief@yesco.com"
		password = "MCyesco123"
    searchcustomerid = "1001"
		searchcustomername = "rite"

		# Go to page
		@driver.navigate.to "https://stage.yesco.com/servizio/"

		# Logging in
		login = ServizioLoginPage.new(@driver)
		login.enter_loginname(loginname)
		login.enter_password(password)
		login.sign_in()

		buffers = Buffers.new(@driver)

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

	end
end
