require "selenium-webdriver"
require "rspec"
require "require_all"
require_all "#Classes"

describe "Performes a column header search in the Estimates resource for the ID and Name columns" do
	it "Verifies that the search returns the proper amount of records" do

		@driver = Selenium::WebDriver.for :chrome

		# Test Variables
		timestamp = Time.now.strftime("%m/%d/%Y %I:%M:%S")
		loginname = "masterchief@yesco.com"
		password = "MCyesco123"
		searchestimateid = "1001"
		searchestimatename = "approved"

		# Go to page
		@driver.navigate.to "https://stage.yesco.com/servizio/"

		# Logging in
		login = ServizioLoginPage.new(@driver)
		login.enter_loginname(loginname)
		login.enter_password(password)
		login.sign_in()

		buffers = Buffers.new(@driver)

		# Click on Estimates and search columns
		estimates = EstimatesResource.new(@driver)
		estimates.open_estimates()
		buffers.ajax_buffer()
		estimates.search_estimateid(searchestimateid)
		buffers.ajax_buffer()
		print "Estimates Search (ID): \n"
		print "%s \n" % estimates.top_refnumber.text
		print "\n"
		expect(estimates.top_refnumber.text).to include(searchestimateid)

		estimates.search_reset()
		buffers.ajax_buffer()
		estimateswait = Selenium::WebDriver::Wait.new(:timeout => 5)
		estimateswait.until {estimates.search_estimateid_field['value'].empty? == true}

		estimates.search_estimatename(searchestimatename)
		buffers.ajax_buffer()
		print "Estimates Search (NAME): \n"
		print "%s \n" % estimates.top.text
		print "\n"
		expect(estimates.top.text.downcase).to include(searchestimatename)

	end
end
