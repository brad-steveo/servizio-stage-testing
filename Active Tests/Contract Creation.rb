require "selenium-webdriver"
require "rspec"
require "require_all"
require_all "#Classes"

describe "Opens Contracts resource and creates a contract" do
	it "Verifies that contract creation was successful" do

		@driver = Selenium::WebDriver.for :chrome

		#General Test Variables
		timestamp = Time.now.strftime("%m/%d/%Y %I:%M:%S")
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

		buffers = Buffers.new(@driver)
		contracts = ContractsResource.new(@driver)
		contracts.open_contracts()

    #Contract Creation
    def contract_creator()

      contracts = ContractsResource.new(@driver)

      #Record Variables
      timestamp = Time.now.strftime("%m/%d/%Y %I:%M:%S")
      contractname = "Selenium Contract #{timestamp}"
      customer = "selenium test customer"
      details = "Contract details #{timestamp}"
      coverages = "Contract coverages #{timestamp}"
      specialinstructions = "Special instructions #{timestamp}"
      startdate = (Date.today).strftime("%m/%d/%Y")
      enddate = (Date.today + 30).strftime("%m/%d/%Y")
      currenttopref = contracts.top_refnumber.text

      contracts.create_contract()
      contracts.name(contractname)
      contracts.customer(customer)
      contracts.details(details)
      contracts.coverages(coverages)
      contracts.special_instructions(specialinstructions)
      contracts.start_date(startdate)
      contracts.end_date(enddate)
      contracts.save_close()

      wait = Selenium::WebDriver::Wait.new(:timeout => 5)
      wait.until {contracts.top_refnumber.text != currenttopref}

      #Verification
      print contracts.top_refnumber.text
      expect(contracts.top.text).to include(contractname)
    end

    loop do
      i += 1
      puts contract_creator()
      if i == loopcount
        break
      end
    end


	end
end
