require "selenium-webdriver"
require "rspec"
require "require_all"
require_all "#Classes"

describe "Performes a column header search in the Contracts resource for the ID and Name columns" do
	it "Verifies that the search returns the proper records" do

		@driver = Selenium::WebDriver.for :chrome

		# Test Variables
		timestamp = Time.now.strftime("%m/%d/%Y %I:%M:%S")
		loginname = "masterchief@yesco.com"
		password = "MCyesco123"
    searchcontractid = "1001"
		searchcontractname = "05/18/2021"

		# Go to page
		@driver.navigate.to "https://stage.yesco.com/servizio/"

		# Logging in
		login = ServizioLoginPage.new(@driver)
		login.enter_loginname(loginname)
		login.enter_password(password)
		login.sign_in()

		buffers = Buffers.new(@driver)

    # Click on Contracts and search columns
		contracts = ContractsResource.new(@driver)
		contracts.open_contracts()
		buffers.ajax_buffer()
		contracts.search_contractid(searchcontractid)
		buffers.ajax_buffer()
		print "Contracts Search (ID): \n"
		print "%s \n" % contracts.top_refnumber.text
		print "\n"
		expect(contracts.top_refnumber.text).to include(searchcontractid)

		contracts.search_reset()
		buffers.ajax_buffer()
		contractswait = Selenium::WebDriver::Wait.new(:timeout => 5)
		contractswait.until {contracts.search_contractid_field['value'].empty? == true}

		contracts.search_contractname(searchcontractname)
		buffers.ajax_buffer()
		print "Contracts Search (NAME): \n"
		print "%s \n" % contracts.top.text
		print "\n"
		expect(contracts.top.text.downcase).to include(searchcontractname)

	end
end
