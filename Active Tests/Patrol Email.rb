require "selenium-webdriver"
require "rspec"
require "require_all"
require_all "#Classes"


describe "Patrol Email" do
	it "Opens the top patrol record and emails it from Servizio" do

		@driver = Selenium::WebDriver.for :chrome

		#Test Variables
		timestamp = Time.now.strftime("%m/%d/%Y %I:%M:%S")
		loginname = "masterchief@yesco.com"
		password = "MCyesco123"
		emailaddress = ', bstevenson@yesco.com'
		emailsubject = "Patrol Email (Selenium) #{timestamp}"
		emailmessage = 'Selenium Test Email Message'

		#Go to page
		@driver.navigate.to "https://stage.yesco.com/servizio/"

		#Logging in
		login = ServizioLoginPage.new(@driver)
		login.enter_loginname(loginname)
		login.enter_password(password)
		login.sign_in()

		#Open job and send email
		patrols = PatrolsResource.new(@driver)
		printemail = PrintEmailPage.new(@driver)
		patrols.open_patrols()
		patrols.top_open()
		patrols.actions()
		patrols.actions_printemail()
		printemail.ok()
		printemail.email_address(emailaddress)
		printemail.email_subject(emailsubject)
		printemail.email_message(emailmessage)
		printemail.email_close()
		patrols.save_close()

	end
end
