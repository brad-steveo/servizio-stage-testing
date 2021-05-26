require "selenium-webdriver"
require "rspec"
require "require_all"
require_all "#Classes"

describe "Makes top contact inactive using grid actions menu" do
	it "Verifies that top contact was made inactive" do

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

    #Open Contacts Resource
    settings = SettingsResource.new(@driver)
		settings.open_settings()
		settings.open_contacts()

    #Make top contact inactive
    def makecontactinactive()

      contacts = ContactsResource.new(@driver)
      topcontact = contacts.top_refnumber.text

      contacts.top_actions()
      contacts.actions_makeinactive()

      print topcontact

      #Verification
  		expect(contacts.top_refnumber.text).not_to eql(topcontact)

    end

    loop do
      i += 1
      puts makecontactinactive()
      if i == loopcount
        break
      end
    end

	end
end
