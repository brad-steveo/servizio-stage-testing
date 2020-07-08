require "selenium-webdriver"
require "rspec"
require "require_all"
require_all "#Classes"

describe "Performes a search in the Contracts resource" do
	it "Verifies that the search returns the proper records" do

		@driver = Selenium::WebDriver.for :chrome

		#Test Variables
		timestamp = Time.now.strftime("%m/%d/%Y %I:%M:%S")
		loginname = "masterchief@yesco.com"
		password = "MCyesco123"
		searchcontract = "2"

		#Go to page
		@driver.navigate.to "https://stage.yesco.com/servizio/"

		#Logging in
		login = ServizioLoginPage.new(@driver)
		login.enter_loginname(loginname)
		login.enter_password(password)
		login.sign_in()

		#Click on Contracts and use Google Search
		contracts = ContractsResource.new(@driver)
		contracts.open_contracts()
		contracts.search_contract(searchcontract)

		print "Contracts Search: \n"
		print "%s \n" % contracts.top.text
		print "\n"
		expect(contracts.top.text.downcase).to include(searchcontract.downcase)

	end
end
