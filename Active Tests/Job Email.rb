require "selenium-webdriver"
require "rspec"
require "require_all"
require_all "Classes"

describe "Job Email Test" do
	it "Opens most recent job and sends an email" do

		@driver = Selenium::WebDriver.for :chrome

		#Test Variables
		timestamp = Time.now.strftime("%m/%d/%Y %I:%M:%S")
		loginname = "masterchief@yesco.com"
		password = "yesco123"
		emailaddress = ', bstevenson@yesco.com'
		emailsubject = "Job Email (Selenium) #{timestamp}"
		emailmessage = 'Selenium Test Email Message'

		#Go to page
		@driver.navigate.to "https://stage.yesco.com/servizio/"

		#Logging in
		login = ServizioLoginPage.new(@driver)
		login.enter_loginname(loginname)
		login.enter_password(password)
		login.sign_in()

		#Open job and send email
		jobs = JobsResource.new(@driver)
		printemail = PrintEmailPage.new(@driver)
		jobs.open_jobs()
		jobs.top_open()
		jobs.actions()
		jobs.actions_printemail()
		printemail.additional_notes()
		printemail.ok()
		printemail.email_address(emailaddress)
		printemail.email_subject(emailsubject)
		printemail.email_message(emailmessage)
		printemail.email_close()

		sleep(2)

		jobs.save_close()

	end
end
