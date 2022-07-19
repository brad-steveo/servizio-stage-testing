require "selenium-webdriver"
require "rspec"
require "require_all"
require_all "#Classes"

describe "Estimate Main Search" do
	it "Performes a global search in the Estimates resource" do

		@driver = Selenium::WebDriver.for :chrome

		#Test Variables
		timestamp = Time.now.strftime("%m/%d/%Y %I:%M:%S")
		loginname = "masterchief@yesco.com"
		password = "MCyesco123"
		searchestimate = "06/25/2019"

		#Go to page
		@driver.navigate.to "https://stage.yesco.com/servizio/"

		#Logging in
		login = ServizioLoginPage.new(@driver)
		login.enter_loginname(loginname)
		login.enter_password(password)
		login.sign_in()

    #Click on Estimates and use Google Search
		estimates = EstimatesResource.new(@driver)
		estimates.open_estimates()
		estimates.search_estimate(searchestimate)

		print "Estimates Search: \n"
		print "%s \n" % estimates.top.text
		print "\n"
		expect(estimates.top.text.downcase).to include(searchestimate.downcase)

	end
end
