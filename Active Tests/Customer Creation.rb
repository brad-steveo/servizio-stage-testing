require "selenium-webdriver"
require "rspec"
require "require_all"
require_all "Classes"

describe "Creates an Customer" do
	it "Verifies that Customer Creation was successful" do

		@driver = Selenium::WebDriver.for :chrome

		#General Test Variables
		loginname = "masterchief@yesco.com"
		password = "yesco123"
		loopcount = 2
		i = 0

		#Go to page
		@driver.navigate.to "https://stage.yesco.com/servizio/"

		#Logging in
		login = ServizioLoginPage.new(@driver)
		login.enter_loginname(loginname)
		login.enter_password(password)
		login.sign_in()

		customers = CustomersResource.new(@driver)
		customers.open_customers()

		#Customer Creation
		def customer_creator()

			customers = CustomersResource.new(@driver)

			#Record Variables
			timestamp = Time.now.strftime("%m/%d/%Y %I:%M:%S")
			customername = "Selenium Customer #{timestamp}"
			dbaname = "YESCO"
			customerpatroltype = "Yes"
			specialinstructions = "Customer special instructions #{timestamp}"
			patrolinstructions = "Patroller instructions #{timestamp}"
			customerphone = "123.456.7890"
			billname = "YESCO"
			billstreet = "2401 Foothill Dr."
			billcity = "Salt Lake City"
			billstate = "Utah"
			billzip = "84109"
			billcontact = "Selenium Test Contact"

			customers.create_customer()
			customers.name(customername)
			customers.dba_name(dbaname)
			customers.patrol_type(customerpatroltype)
			customers.special_instructions(specialinstructions)
			customers.patrol_instructions(patrolinstructions)
			customers.phone(customerphone)
			customers.bill_name(billname)
			customers.bill_street(billstreet)
			customers.bill_city(billcity)
			customers.bill_state(billstate)
			customers.bill_zip(billzip)
			customers.copy_to_site()

			sleep(2)

			customers.save_close()

			sleep(2)

			#Verification
			print customers.top_refnumber.text
			print " - "
			print customers.top.text
			print "\nStage: "
			print customers.top_stage.text
			print "\nType: "
			print customers.top_type.text
			print "\nPatrol Type: "
			print customers.top_patroltype.text
			print "\n\n"
			expect(customers.top.text).to include(customername)
		end

		loop do
			i += 1
			puts customer_creator()
			if i == loopcount
				break
			end
		end

	end
end
