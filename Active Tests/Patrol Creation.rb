require "selenium-webdriver"
require "rspec"
require "require_all"
require_all "#Classes"

describe "Patrol Creation" do
	it "Creates a new patrol record" do

		@driver = Selenium::WebDriver.for :chrome

		#Test Variables
		loginname = "masterchief@yesco.com"
		password = "MCyesco123"
		loopcount = 1
		i = 0

		#Go to page
		@driver.navigate.to "https://stage.yesco.com/servizio/"

		#Logging in
		login = ServizioLoginPage.new(@driver)
		login.enter_loginname(loginname)
		login.enter_password(password)
		login.sign_in()

		patrols = PatrolsResource.new(@driver)
		patrols.open_patrols()

		#Patrol Creation
		def patrol_creator()

			patrols = PatrolsResource.new(@driver)

			#Record Variables
			timestamp = Time.now.strftime("%m/%d/%Y %I:%M:%S")
			submittedname = "Selenium Test #{timestamp}"
			location = "Test Site"
			serviceneeded = "Service is needed #{timestamp}"
			customer = "Selenium Test Customer"

			currenttopref = patrols.top_refnumber

			patrols.create_patrol()
			patrols.customer(customer)

			buffers = Buffers.new(@driver)
			buffers.ajax_buffer()

			patrols.submitted_name(submittedname)
			patrols.location(location)
			patrols.service_needed(serviceneeded)
			patrols.save_close()

			wait = Selenium::WebDriver::Wait.new(:timeout => 5)
			wait.until {patrols.top_refnumber != currenttopref}

			#Verification
			print patrols.top_refnumber.text
			print " - "
			print patrols.top.text
			print "\n\n"
			expect(patrols.top.text).to include(submittedname)
		end

		loop do
			i += 1
			puts patrol_creator()
			if i == loopcount
				break
			end
		end

	end
end
