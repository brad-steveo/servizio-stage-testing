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
		test2 = "Sales"
		search = "626"
		timestamp = Time.now.strftime("%m/%d/%Y %I:%M:%S")

		#Go to page
		@driver.navigate.to "https://stage.yesco.com/servizio/"

		#Logging in
		login = ServizioLoginPage.new(@driver)
		login.enter_loginname(loginname)
		login.enter_password(password)
		login.sign_in()

		#CSS Testing
		buffers = Buffers.new(@driver)
		settings = SettingsResource.new(@driver)
		documents = DocumentsResource.new(@driver)

		settings.open_settings()
		settings.open_documents()
		documents.search_name(search)
		documents.search_reset()

		sleep(5)

	end
end
