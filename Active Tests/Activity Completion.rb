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
			currenttoprecord = activities.top_refnumber.text
			activities.top_open()

			if activities.date_due_contents['value'].empty? == true
				activities.date_due(date)
				activities.complete_activity()
				activities.save_close_grid()

				closeiframebuffer1 = Selenium::WebDriver::Wait.new(:timeout => 10)
				closeiframebuffer1.until {activities.top_refnumber.text != currenttoprecord}

			else
				activities.complete_activity()
				activities.save_close_grid()

				closeiframebuffer1 = Selenium::WebDriver::Wait.new(:timeout => 10)
				closeiframebuffer1.until {activities.top_refnumber.text != currenttoprecord}

			end

			if i == loopcount
				break
			end
		end

		#sleep(3)

		closeiframebuffer = Selenium::WebDriver::Wait.new(:timeout => 10)
		closeiframebuffer.until {activities.activity_count.text.to_i == (activitycount.to_i - loopcount)}

		print activitycount
		print "\n"
		print activities.activity_count.text

		expect(activities.activity_count.text.to_i).to eql(activitycount.to_i - loopcount)

	end
end
