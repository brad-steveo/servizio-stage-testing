require "selenium-webdriver"
require "rspec"
require "require_all"
require_all "#Classes"

describe "Patrol Activity Creation" do
	it "Creates a new activity on a patrol record" do

		@driver = Selenium::WebDriver.for :chrome

		#Test Variables
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

		#Select top Patrol
		patrols = PatrolsResource.new(@driver)
		patrols.open_patrols()
		patrols.top_open()
		patrols.activities_tab()
		patrols.actions()

		#Activity Creation for top patrol
		def activity_creator()
			timestamp = Time.now.strftime("%m/%d/%Y %I:%M:%S")
			activityreason = 'Sales'
			activitydescription = "Description #{timestamp}"
			patrols = PatrolsResource.new(@driver)
			activities = ActivitiesResource.new(@driver)
			patrols.actions_createactivity()
			activities.reason(activityreason)
			activities.description(activitydescription)
			activities.save_close()

			iframebuffer = Selenium::WebDriver::Wait.new(:timeout => 10)
			iframebuffer.until {patrols.top_activitydescription.text == activitydescription}

			#Verify Activity Creation
			print patrols.top_activitydescription.text
			expect(patrols.top_activitydescription.text).to eql(activitydescription)
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
