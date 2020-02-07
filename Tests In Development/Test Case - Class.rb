require "selenium-webdriver"
require "rspec"
require "require_all"
require_all "#Classes"

describe "Class Testing" do
	it "Tests class variables and methods" do

		@driver = Selenium::WebDriver.for :chrome

		# Test Variables
		timestamp = Time.now.strftime("%m/%d/%Y %I:%M:%S")
		loginname = "masterchief@yesco.com"
		password = "yesco123"
		searchjoblineid = "1024"
		searchjoblinejobname = "Stage Test"
		searchinvoicelineid = "1010"
		searchinvoicelineinvoiceid = "1016"

		# Go to page
		@driver.navigate.to "https://stage.yesco.com/servizio/"

		# Logging in
		login = ServizioLoginPage.new(@driver)
		login.enter_loginname(loginname)
		login.enter_password(password)
		login.sign_in()

		# Click on Settings > Job Lines and search columns
		settings = SettingsResource.new(@driver)
		settings.open_settings()

		#Test change for Git (before staging)

		#Test after staging

	end
end
