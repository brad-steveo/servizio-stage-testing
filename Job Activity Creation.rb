require "selenium-webdriver"
require "rspec"
require_relative "Class - Login Page.rb"
require_relative "Class - Jobs Resource.rb"
require_relative "Class - Activities Resource.rb"

describe "Opens top Job" do
	it "Creates and verifies Activity creation was successful" do

		@driver = Selenium::WebDriver.for :chrome

		#Test Variables
		timestamp = Time.now.strftime("%m/%d/%Y %I:%M:%S")
		loginname = "masterchief@yesco.com"
		password = "yesco123"
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
