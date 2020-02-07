require "selenium-webdriver"
require "rspec"
require "require_all"
require_all "#Classes"

describe "Creates a Patrol" do
	it "Verifies that Patrol Creation was successful" do

		@driver = Selenium::WebDriver.for :chrome

		#Test Variables
		loginname = "masterchief@yesco.com"
		password = "yesco123"
		loopcount = 2
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
