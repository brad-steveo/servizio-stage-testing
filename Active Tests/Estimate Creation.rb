require "selenium-webdriver"
require "rspec"
require "require_all"
require_all "#Classes"

describe "Creates an Estimate" do
	it "Verifies that Estimate Creation was successful" do

		@driver = Selenium::WebDriver.for :chrome

		#General Test Variables
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

		estimates = EstimatesResource.new(@driver)
		estimates.open_estimates()

			#Estimate Creation
			def estimate_creator()

				estimates = EstimatesResource.new(@driver)

				#Record Variables
				timestamp = Time.now.strftime("%m/%d/%Y %I:%M:%S")
				select = "Selenium Test Customer"
				estimatename = "Selenium Job #{timestamp}"
				estimatelocation = "Test Site"
				estimatetype = "Service"
				estimatestage = "New"
				estimatepatrol = "1400"
				effective = (Date.today).strftime("%m/%d/%Y")
				expires = (Date.today + 10).strftime("%m/%d/%Y")
				nte = "1500"

				currenttopref = estimates.top_refnumber.text

				estimates.create_estimate()
				estimates.select_customer(select)
				estimates.name(estimatename)
				sleep(1)
				estimates.location(estimatelocation)
				sleep(1)
				estimates.type(estimatetype)
				sleep(1)
				estimates.stage(estimatestage)
				sleep(1)
				estimates.effective_on(effective)
				sleep(1)
				estimates.expires_on(expires)
				sleep(1)
				estimates.nte(nte)
				sleep(1)
				estimates.save_close()

				wait = Selenium::WebDriver::Wait.new(:timeout => 5)
				wait.until {estimates.top_refnumber.text != currenttopref}

				#Verification
				print estimates.top_refnumber.text
				print " - "
				print estimates.top.text
				print "\nStage: "
				print estimates.top_stage.text
				print "\nType: "
				print estimates.top_type.text
				print "\n\n"
				expect(estimates.top.text).to include(estimatename)
				expect(estimates.top_stage.text).to include(estimatestage)
				expect(estimates.top_type.text).to include(estimatetype)
			end

			loop do
				i += 1
				puts estimate_creator()
				if i == loopcount
					break
				end
			end

	end
end
