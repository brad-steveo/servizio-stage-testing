require "selenium-webdriver"
require "rspec"
require_relative "Class - Login Page.rb"
require_relative "Class - Settings Page.rb"
require_relative "Class - Contacts Resource.rb"
require_relative "Class - Patrols Resource.rb"
require_relative "Class - Jobs Resource.rb"
require_relative "Class - Estimates Resource.rb"
require_relative "Class - Activities Resource.rb"
require_relative "Class - PrintEmail Page.rb"
require_relative "Class - Job Lines Resource.rb"
require_relative "Class - Invoice Lines Resource.rb"

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
