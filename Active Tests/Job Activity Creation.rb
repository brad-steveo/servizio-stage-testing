require "selenium-webdriver"
require "rspec"
require "require_all"
require_all "#Classes"

describe "Job Activity Creation" do
	it "Creates a new activity on a job record" do

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

		#Select top Job
		jobs = JobsResource.new(@driver)
		jobs.open_jobs()
		jobs.top_open()
		jobs.activities_tab()
		jobs.actions()

		#Activity Creation for top job
		def activity_creator()
			timestamp = Time.now.strftime("%m/%d/%Y %I:%M:%S")
			activityreason = 'Sales'
			activitydescription = "Description #{timestamp}"
			jobs = JobsResource.new(@driver)
			activities = ActivitiesResource.new(@driver)
			jobs.actions_createactivity()
			activities.reason(activityreason)
			activities.description(activitydescription)
			activities.save_close()

			iframebuffer = Selenium::WebDriver::Wait.new(:timeout => 10)
			iframebuffer.until {jobs.top_activitydescription.text == activitydescription}

			#Verify Activity Creation
			print jobs.top_activitydescription.text
			expect(jobs.top_activitydescription.text).to eql(activitydescription)
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
