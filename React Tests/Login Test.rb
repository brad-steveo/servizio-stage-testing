require "selenium-webdriver"
require "rspec"
require "require_all"
require_all "#Classes"

describe "React Login Test" do
	it "Log into Servizio React" do

		@driver = Selenium::WebDriver.for :chrome

		#Test Variables
		loginname = "bstevenson@yesco.com"
		password = "BSyesco2113"

		#Go to page
		@driver.navigate.to "https://dev.yesco.com/servizioreact/"

		#Logging in
		login = ServizioLoginPage.new(@driver)
		login.enter_username(loginname)
    login.enter_password(password)
		login.sign_in()

	end
end
