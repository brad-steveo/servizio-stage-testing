require "selenium-webdriver"
require "rspec"
require "require_all"
require_all "#Classes"

describe "Estimates Email Test" do
	it "Opens most recent estimate and sends an email" do

		@driver = Selenium::WebDriver.for :chrome

		#Test Variables
		timestamp = Time.now.strftime("%m/%d/%Y %I:%M:%S")
		loginname = "masterchief@yesco.com"
		password = "MCyesco123"
		emailaddress = ', bstevenson@yesco.com'
		emailsubject = "Estimate Email (Selenium) #{timestamp}"
		emailmessage = 'Selenium Test Email Message'

		#Go to page
		@driver.navigate.to "https://stage.yesco.com/servizio/"

		#Logging in
		login = ServizioLoginPage.new(@driver)
		login.enter_loginname(loginname)
		login.enter_password(password)
		login.sign_in()

		#Open estimate and send email
		estimates = EstimatesResource.new(@driver)
		printemail = PrintEmailPage.new(@driver)
		estimates.open_estimates()
		estimates.top_open()
		estimates.actions()
		estimates.actions_printemail()
		printemail.additional_notes()
		printemail.ok()
		printemail.email_address(emailaddress)
		printemail.email_subject(emailsubject)
		printemail.email_message(emailmessage)
		printemail.email_close()

		sleep(2)

		estimates.save_close()

	end
end
