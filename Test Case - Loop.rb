require "selenium-webdriver"
require "rspec"
require_relative "Class - Login Page.rb"
require_relative "Class - Settings Page.rb"
require_relative "Class - Contacts Resource.rb"
require_relative "Class - Patrols Resource.rb"

describe "Class Testing" do
	it "Tests class variables and methods" do

		@driver = Selenium::WebDriver.for :chrome

		#Test Variables
		timestamp = Time.now.strftime("%m/%d/%Y %I:%M:%S")
		loginname = "masterchief@yesco.com"
		password = "yesco123"
		loopcount = 3
		i = 0

		#Go to page
		@driver.navigate.to "https://stage.yesco.com/servizio/"

		#Logging in
		login = ServizioLoginPage.new(@driver)
		login.enter_loginname(loginname)
		login.enter_password(password)
		login.sign_in()

		#Click on Patrols Resource and start patrol creation
		patrols = PatrolsResource.new(@driver)
		patrols.open_patrols()

		def loop_test()
			#Patrol Creation
			timestamp = Time.now.strftime("%m/%d/%Y %I:%M:%S")
			submittedname = "Selenium Test #{timestamp}"
			location = "Test Site"
			serviceneeded = "Service is needed #{timestamp}"
			customer = "selenium"
			patrols = PatrolsResource.new(@driver)
			patrols.create_patrol()
			patrols.submitted_name(submittedname)
			patrols.location(location)
			patrols.service_needed(serviceneeded)
			patrols.customer(customer)
			patrols.save_close()

			#Verification
			print patrols.top_refnumber.text
			print " - "
			print patrols.top.text
			print " "
			expect(patrols.top.text).to include(submittedname)
		end

		loop do
			i += 1
			puts loop_test()
			if i == loopcount
				break
			end
		end

	end
end
