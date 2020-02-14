require "selenium-webdriver"
require "rspec"
require "require_all"
require_all "#Classes"

describe "Creates new basic activity" do
	it "Verifies if activity creation is successful" do

		@driver = Selenium::WebDriver.for :chrome

		#Test Variables
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

		loop do
			timestamp = Time.now.strftime("%m/%d/%Y %I:%M:%S")
			i += 1
			activities.create_activity()
			activities.description(timestamp)
			activities.save_close_grid()

			print activities.top_refnumber.text
			print "\n"
			print activities.top_description.text
			expect(activities.top_description.text).to eql(timestamp)
			print "\n"
			print activities.top_assigned.text
			print "\n"
			print activities.top_due.text
			expect(activities.top_due.text).to eql(date)
			print "\n"
			print "Loop: %s" % i
			print "\n\n"

			if i == loopcount
				break
			end
		end

	end
end
