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
		search = "1024"

		#Go to page
		@driver.navigate.to "https://stage.yesco.com/servizio/"

		#Logging in
		login = ServizioLoginPage.new(@driver)
		login.enter_loginname(loginname)
		login.enter_password(password)
		login.sign_in()

		#CSS Testing
		buffers = Buffers.new(@driver)
		jobs = JobsResource.new(@driver)
		jobs.open_jobs()

		jobs.top_open()
		jobs.invoices_tab()
		buffers.ajax_buffer()
		jobs.search_invoice(search)
		jobs.top_invoice()

		sleep(5)

	end
end
