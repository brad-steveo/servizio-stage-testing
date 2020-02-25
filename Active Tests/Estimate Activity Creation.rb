require "selenium-webdriver"
require "rspec"
require "require_all"
require_all "#Classes"

describe "Opens top Estimate" do
	it "Creates and verifies Activity creation was successful" do

		@driver = Selenium::WebDriver.for :chrome

		#General Test Variables
		timestamp = Time.now.strftime("%m/%d/%Y %I:%M:%S")
		loginname = "masterchief@yesco.com"
		password = "MCyesco123"
		activitycount = 2
		i = 0

		#Go to page
		@driver.navigate.to "https://stage.yesco.com/servizio/"

		#Logging in
		login = ServizioLoginPage.new(@driver)
		login.enter_loginname(loginname)
		login.enter_password(password)
		login.sign_in()

		#Select top Estimate
		estimates = EstimatesResource.new(@driver)
		estimates.open_estimates()
		estimates.top_open()
		estimates.activities_tab()
		estimates.actions()

		#Activity Creation for top estimate
		def activity_creator()
			timestamp = Time.now.strftime("%m/%d/%Y %I:%M:%S")
			activityreason = 'Sales'
			activitydescription = "Description #{timestamp}"
			estimates = EstimatesResource.new(@driver)
			activities = ActivitiesResource.new(@driver)
			estimates.actions_createactivity()
			activities.reason(activityreason)
			activities.description(activitydescription)
			activities.save_close()

			iframebuffer = Selenium::WebDriver::Wait.new(:timeout => 10)
			iframebuffer.until {estimates.top_activitydescription.text == activitydescription}

			#Verify Activity Creation
			print estimates.top_activitydescription.text
			expect(estimates.top_activitydescription.text).to eql(activitydescription)
		end

		loop do
			i += 1
			puts activity_creator()
			if i == activitycount
				break
			end
		end

	end
end
