require "selenium-webdriver"
require "rspec"
require "require_all"
require_all "/Users/Brad/Documents/YESCO Stage Testing/servizio-stage-testing/React Tests/#Classes"

describe "Customer Creation Loop" do

	@driver = Selenium::WebDriver.for :chrome

	#Test Variables
    loginname = "masterchief@yesco.com"
    password = "MCyesco123"
    resource1 = "Customers"
    loopcount = 2
    i = 0

	#Test Classes
	login = ServizioLogin.new(@driver)
	home = ServizioHome.new(@driver)
	customers = CustomersResource.new(@driver)

	#Setup
	@driver.navigate.to "https://stage.yesco.com/servizioreact/"
	login.enter_username(loginname)
	login.enter_password(password)
	login.sign_in()

	#Text Examples
	it "Open the Customers Resource" do
		home.open_resource(resource1)
		recordtest = customers.top_ref.text

		expect(recordtest).not_to eql("")
    end

    it "#{loopcount} Customer Loop Test" do
        loop do

            #Loop Variables
            timestamp = Time.now.strftime("%m/%d/%Y %I:%M:%S")
            customername = "Selenium Customer #{timestamp}"
            dbaname = "YESCO"
            stage = "Customer"
            patroltype = "Yes"
            timezone = "(UTC-07:00) Mountain Time (US & Canada)"
            specialinstructions = "Customer special instructions #{timestamp}"
            patrolinstructions = "Patroller instructions #{timestamp}"
            customerphone = "123.456.7890"
            billname = "YESCO"
            billstreet = "2401 Foothill Dr."
            billcity = "Salt Lake City"
            billstate = "Utah"
            billzip = "84109"
            i += 1

            #Loop Test
            customers.new_customer()
            customers.name(customername)
            customers.dba_name(dbaname)
            customers.stage(stage)
            customers.patrol_type(patroltype)
            customers.timezone(timezone)
            customers.special_instructions(specialinstructions)
            customers.patrol_instructions(patrolinstructions)
            customers.billing_name(billname)
            customers.billing_street(billstreet)
            customers.billing_city(billcity)
            customers.billing_state(billstate)
            customers.billing_zip(billzip)
            customers.copy_to_site()
            customers.save_close()

            expect(customers.top_name.text.downcase).to include(customername.downcase)
            print customers.top_ref.text
            print " - "
            print customers.top_name.text
            print "\n"

            if i == loopcount
                break
            end
        end

	end

end