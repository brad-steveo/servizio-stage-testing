require "selenium-webdriver"
require "rspec"
require "require_all"
require_all "#Classes"

describe "Creates an Invoice" do
	it "Verifies that Invoice creation and subsequent activity creation was successful" do

		@driver = Selenium::WebDriver.for :chrome

		#Test Variables
		timestamp = Time.now.strftime("%m/%d/%Y %I:%M:%S")
		loginname = "masterchief@yesco.com"
		password = "MCyesco123"
		activitycount = 2
		i = 0

		#Go to page
		@driver.navigate.to "https://stage.yesco.com/servizio/"

		#Logging in
		login = ServizioLoginPage.new(@driver)
		login.enter_loginname(loginname)
		login.enter_password(password)
		login.sign_in()

		#Select top Invoice
		invoices = InvoicesResource.new(@driver)
		invoices.open_invoices()
		invoices.top_open()
		invoices.activities_tab()
		invoices.actions()

		#Activity Creation for new invoice
		def activity_creator()
			timestamp = Time.now.strftime("%m/%d/%Y %I:%M:%S")
			activityreason = 'Sales'
			activitydescription = "Description #{timestamp}"
			invoices = InvoicesResource.new(@driver)
			activities = ActivitiesResource.new(@driver)
			invoices.actions_createactivity()
			activities.reason(activityreason)
			activities.description(activitydescription)
			activities.save_close()

			#Verify Activity Creation
			print invoices.top_activitydescription.text
			expect(invoices.top_activitydescription.text).to eql(activitydescription)
		end

		loop do
			i += 1
			puts activity_creator()
			if i == activitycount
				break
			end
		end

	end
end
