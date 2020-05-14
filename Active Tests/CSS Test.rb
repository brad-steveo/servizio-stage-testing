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
		searchcontract = "2"

		#Go to page
		@driver.navigate.to "https://stage.yesco.com/servizio/"

		#Logging in
		login = ServizioLoginPage.new(@driver)
		login.enter_loginname(loginname)
		login.enter_password(password)
		login.sign_in()

		#CSS Testing
		buffers = Buffers.new(@driver)

		#Click on Contracts and export grid
		contracts = ContractsResource.new(@driver)
		contracts.open_contracts()
		contracts.grid_options()
		contracts.export_contracts()

		print("Contracts Exported")
		print("\n")

		sleep(5)

	end
end
