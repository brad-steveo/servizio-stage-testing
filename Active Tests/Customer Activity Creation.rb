require "selenium-webdriver"
require "rspec"
require "require_all"
require_all "#Classes"

describe "Opens top Customer" do
	it "Creates and verifies Activity creation was successful" do

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

		#Select top Customer
		customers = CustomersResource.new(@driver)
		customers.open_customers()
		customers.top_open()
		customers.activities_tab()
		customers.actions()

		#Activity Creation for top customer
		def activity_creator()
			timestamp = Time.now.strftime("%m/%d/%Y %I:%M:%S")
			activityreason = 'Sales'
			activitydescription = "Description #{timestamp}"
			customers = CustomersResource.new(@driver)
			activities = ActivitiesResource.new(@driver)
			customers.actions_createactivity()
			activities.reason(activityreason)
			activities.description(activitydescription)
			activities.save_close()

			sleep(5)

			#Verify Activity Creation
			print customers.top_activitydescription.text
			expect(customers.top_activitydescription.text).to eql(activitydescription)
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
