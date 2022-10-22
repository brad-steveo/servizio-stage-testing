require "selenium-webdriver"
require "rspec"
require "require_all"
require_all "#Classes"

describe "Test Name" do

	@driver = Selenium::WebDriver.for :chrome

	#Test Variables
  timestamp = Time.now.strftime("%m/%d/%Y %I:%M:%S")
  dateonly = Time.now.strftime("%m/%d/%Y")
	loginname = "bstevenson@yesco.com"
	password = "BSyesco2113"

	#Test Classes
	login = ServizioLogin.new(@driver)

	#Setup
	@driver.navigate.to "https://dev.yesco.com/servizioreact/"
	login.enter_username(loginname)
	login.enter_password(password)
	login.sign_in()

	#Text Examples
	it "Example Action" do
		#home.open_resource(resource1)
	end

end
