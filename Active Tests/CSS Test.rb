require "selenium-webdriver"
require "rspec"
require "require_all"
require_all "#Classes"

describe "CSS Testing" do
	it "Tests various CSS methods" do

		@driver = Selenium::WebDriver.for :chrome

		#Test Variables
		loginname = "masterchief@yesco.com"
		password = "MCyesco123"
		loopcount = 1
		i = 0
		test = "Does this appear?"

		#Go to page
		@driver.navigate.to "https://stage.yesco.com/servizio/"

		#Logging in
		login = ServizioLoginPage.new(@driver)
		login.enter_loginname(loginname)
		login.enter_password(password)
		login.sign_in()

		patrols = PatrolsResource.new(@driver)
		patrols.open_patrols()

		#CSS Testing
		patrols.top_actions
		patrols.actions_printemail

		sleep(5)

	end
end
