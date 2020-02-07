require "selenium-webdriver"
require "rspec"
require "require_all"
require_all "Classes"

describe "Creates a Contact" do
	it "Verifies that Contact Creation was successful" do

		@driver = Selenium::WebDriver.for :chrome

		#Test Variables
		timestamp = Time.now.strftime("%m/%d/%Y %I:%M:%S")
		loginname = "masterchief@yesco.com"
		password = "yesco123"
		contactname = "Selenium Contact #{timestamp}"
		contactphone1 = '123.456.7890'
		contactphone2 = '555.555.5555'
		contactemail1 = 'selenium@selenium.com'
		contactnotes = "Selenium Notes #{timestamp}"

		#Go to page
		@driver.navigate.to "https://stage.yesco.com/servizio/"

		#Logging in
		login = ServizioLoginPage.new(@driver)
		login.enter_loginname(loginname)
		login.enter_password(password)
		login.sign_in()

		#Click on Settings and start contact creation
		settings = SettingsResource.new(@driver)
		settings.open_settings()
		settings.open_contacts()

		contacts = ContactsResource.new(@driver)
		contacts.create_contact()

		#Contact Creation
	 	contacts.contact_name(contactname)
		contacts.contact_phone1(contactphone1)
		contacts.add_phone()
		contacts.contact_phone2(contactphone2)
		contacts.contact_email1(contactemail1)
		contacts.contact_notes(contactnotes)
		contacts.save_close()

		#Verification
		print contacts.top_refnumber.text
		print " - "
		print contacts.top.text
		expect(contacts.top.text).to include(contactname)

	end
end
