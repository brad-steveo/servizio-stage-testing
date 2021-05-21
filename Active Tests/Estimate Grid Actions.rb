require "selenium-webdriver"
require "rspec"
require "require_all"
require_all "#Classes"

describe "Makes top estimate inactive using grid actions menu" do
	it "Verifies that top estimate was made inactive" do

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

    #Open Estimates Resource
		estimates = EstimatesResource.new(@driver)
		estimates.open_estimates()

    #Make top estimate inactive
    def makeestimateinactive()

      estimates = EstimatesResource.new(@driver)
      topestimate = estimates.top_refnumber.text

      estimates.top_actions()
      estimates.actions_makeinactive()

      print topestimate

      #Verification
  		expect(estimates.top_refnumber.text).not_to eql(topestimate)

    end

    loop do
      i += 1
      puts makeestimateinactive()
      if i == loopcount
        break
      end
    end

	end
end
