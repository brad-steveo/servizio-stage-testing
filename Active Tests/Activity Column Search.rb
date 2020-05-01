require "selenium-webdriver"
require "rspec"
require "require_all"
require_all "#Classes"

describe "Performes a column header search in the Activities resource for the ID and Name columns" do
	it "Verifies that the search returns the proper amount of records" do

		@driver = Selenium::WebDriver.for :chrome

		# Test Variables
		timestamp = Time.now.strftime("%m/%d/%Y %I:%M:%S")
		loginname = "masterchief@yesco.com"
		password = "MCyesco123"
		searchactivityid = "1100"
		searchactivitydescription = "02/22/2019 12:22:22"

		# Go to page
		@driver.navigate.to "https://stage.yesco.com/servizio/"

		# Logging in
		login = ServizioLoginPage.new(@driver)
		login.enter_loginname(loginname)
		login.enter_password(password)
		login.sign_in()

		buffers = Buffers.new(@driver)

		# Click on Activities and search columns
		activities = ActivitiesResource.new(@driver)
		activities.open_activities()
		buffers.ajax_buffer()
		activities.search_activityid(searchactivityid)
		buffers.ajax_buffer()
		print "Activities Search (ID): \n"
		print "%s \n" % activities.top_refnumber.text
		print "\n"
		expect(activities.top_refnumber.text).to include(searchactivityid)

		activities.search_reset()
		buffers.ajax_buffer()
		activitieswait = Selenium::WebDriver::Wait.new(:timeout => 5)
		activitieswait.until {activities.search_activityid_field['value'].empty? == true}

		activities.search_activitydescription(searchactivitydescription)
		buffers.ajax_buffer()
		print "Activities Search (DESCRIPTION): \n"
		print "%s \n" % activities.top_description.text
		print "\n"
		expect(activities.top_description.text.downcase).to include(searchactivitydescription)

	end
end
