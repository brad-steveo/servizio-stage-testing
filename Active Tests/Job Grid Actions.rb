require "selenium-webdriver"
require "rspec"
require "require_all"
require_all "#Classes"

describe "Makes top job inactive using grid actions menu" do
	it "Verifies that top job was made inactive" do

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

    #Open Jobs Resource
		jobs = JobsResource.new(@driver)
		jobs.open_jobs()

    #Make top estimate inactive
    def makejobinactive()

      jobs = JobsResource.new(@driver)
      topjob = jobs.top_refnumber.text

      jobs.top_actions()
      jobs.actions_makeinactive()

      print topjob

      #Verification
  		expect(jobs.top_refnumber.text).not_to eql(topjob)

    end

    loop do
      i += 1
      puts makejobinactive()
      if i == loopcount
        break
      end
    end

	end
end
