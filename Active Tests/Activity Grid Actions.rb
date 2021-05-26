require "selenium-webdriver"
require "rspec"
require "require_all"
require_all "#Classes"

describe "Makes top activity inactive using grid actions menu" do
	it "Verifies that top activity was made inactive" do

		@driver = Selenium::WebDriver.for :chrome

		#Test Variables
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

    #Open Activities Resource
		activities = ActivitiesResource.new(@driver)
		activities.open_activities()

    #Make top activity inactive
    def makeactivityinactive()

      activities = ActivitiesResource.new(@driver)
      topactivity = activities.top_refnumber.text

      activities.top_actions()
      activities.actions_makeinactive()

      print topactivity

      #Verification
  		expect(activities.top_refnumber.text).not_to eql(topactivity)

    end

    loop do
      i += 1
      puts makeactivityinactive()
      if i == loopcount
        break
      end
    end

	end
end
