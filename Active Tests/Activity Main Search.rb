require "selenium-webdriver"
require "rspec"
require "require_all"
require_all "#Classes"

describe "Performes a search in the Activities resource" do
	it "Verifies that the search returns the proper records" do

		@driver = Selenium::WebDriver.for :chrome

		#Test Variables
		timestamp = Time.now.strftime("%m/%d/%Y %I:%M:%S")
		loginname = "masterchief@yesco.com"
		password = "MCyesco123"
		searchactivity = "something"

		#Go to page
		@driver.navigate.to "https://stage.yesco.com/servizio/"

		#Logging in
		login = ServizioLoginPage.new(@driver)
		login.enter_loginname(loginname)
		login.enter_password(password)
		login.sign_in()

		#Click on Activities and use Google Search
		activities = ActivitiesResource.new(@driver)
		activities.open_activities()
		activities.search_activity(searchactivity)

		print "Activities Search: \n"
		print "%s \n" % activities.top_description.text
		print "\n"
		expect(activities.top_description.text.downcase).to include(searchactivity.downcase)

	end
end
