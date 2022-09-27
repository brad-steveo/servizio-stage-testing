require "selenium-webdriver"
require "rspec"
require "require_all"
require_all "#Classes"

describe "React Login Test" do
	it "Log into Servizio React" do

		@driver = Selenium::WebDriver.for :chrome

		#Test Variables
		loginname = "bstevenson@yesco.com"
		password = "V0idL0st"

		#Go to page
		@driver.navigate.to "https://dev.yesco.com/servizioreact/"

		#Logging in
		login = ServizioLoginPage.new(@driver)
		login.google_login()
    login.enter_loginname(loginname)
    login.enter_password(password)
    sleep(5)

	end
end
