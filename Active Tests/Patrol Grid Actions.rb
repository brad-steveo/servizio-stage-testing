require "selenium-webdriver"
require "rspec"
require "require_all"
require_all "#Classes"

describe "Patrol Grid Actions" do
	it "Makes top patrol inactive using grid actions menu" do

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

    #Open Patrols Resource
		patrols = PatrolsResource.new(@driver)
		patrols.open_patrols()

    #Make top patrol inactive
    def makepatrolinactive()

      patrols = PatrolsResource.new(@driver)
      toppatrol = patrols.top_refnumber.text

      patrols.top_actions()
      patrols.actions_makeinactive()

      print toppatrol

      #Verification
  		expect(patrols.top_refnumber.text).not_to eql(toppatrol)

    end

    loop do
      i += 1
      puts makepatrolinactive()
      if i == loopcount
        break
      end
    end

	end
end
