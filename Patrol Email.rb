require "selenium-webdriver"
require "rspec"
require_relative "Class - Login Page.rb"
require_relative "Class - Patrols Resource.rb"
require_relative "Class - PrintEmail Page.rb"

describe "Patrol Email Test" do
	it "Opens most recent patrol and sends an email" do

		@driver = Selenium::WebDriver.for :chrome

		#Test Variables
		timestamp = Time.now.strftime("%m/%d/%Y %I:%M:%S")
		loginname = "masterchief@yesco.com"
		password = "yesco123"
		emailaddress = ', bstevenson@yesco.com'
		emailsubject = "Patrol Email (Selenium) #{timestamp}"

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
		printemail.email_close()

		sleep(2)

		patrols.save_close()

	end
end
