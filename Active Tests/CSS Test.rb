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

		#CSS Testing
		customers = CustomersResource.new(@driver)
		customers.open_customers()

		documents = DocumentsResource.new(@driver)

		customers.top_actions()
		customers.gridactions_documents()

		sleep(5)

	end
end