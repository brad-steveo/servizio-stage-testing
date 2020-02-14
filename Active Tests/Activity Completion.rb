require "selenium-webdriver"
require "rspec"
require "require_all"
require_all "#Classes"

describe "Creates new basic activity" do
	it "Verifies if activity creation is successful" do

		@driver = Selenium::WebDriver.for :chrome

		#Test Variables
		timestamp = Time.now.strftime("%m/%d/%Y %I:%M:%S")
		date = Time.now.strftime("%m/%d/%Y")
		loginname = "masterchief@yesco.com"
		password = "MCyesco123"
		loopcount = 2
		i = 0

		#Go to page
		@driver.navigate.to "https://stage.yesco.com/servizio/"

		#Logging in
		login = ServizioLoginPage.new(@driver)
		login.enter_loginname(loginname)
		login.enter_password(password)
		login.sign_in()

		#Activity Creation
		activities = ActivitiesResource.new(@driver)
		activities.open_activities()

		activitycount = activities.activity_count.text

		loop do
			i += 1
			activities.top_open()
			activities.complete_activity()

			if activities.date_due_contents.nil? == true
				activities.date_due(date)
				activities.save_close_grid()
			else
				activities.save_close_grid()
			end

			if i == loopcount
				break
			end
		end

		print activitycount
		print "\n"
		print activities.activity_count.text

		expect(activities.activity_count.text.to_i).to eql(activitycount.to_i - loopcount)

	end
end
