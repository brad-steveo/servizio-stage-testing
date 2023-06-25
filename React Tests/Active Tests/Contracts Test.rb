require "selenium-webdriver"
require "rspec"
require "require_all"
require_all "/Users/Brad/Documents/YESCO Stage Testing/servizio-stage-testing/React Tests/#Classes"

describe "Contracts Test" do

	@driver = Selenium::WebDriver.for :chrome
    #Test Variables
    timestamp = Time.now.strftime("%m/%d/%Y %I:%M:%S")
    dateonly = Time.now.strftime("%m/%d/%Y")
    loginname = "masterchief@yesco.com"
    password = "MCyesco123"
    resource1 = "Contracts"
	idsearch = "1068"
	namesearch = "Stage Testing"
	contractname = "Selenium Contract #{timestamp}"
	customername = "Selenium Test Customer"
	contractdetails = "Selenium Contract Details #{timestamp}"
	contracttype = "Quoted Service"

	#Test Classes
	login = ServizioLogin.new(@driver)
	home = ServizioHome.new(@driver)
    contracts = ContractsResource.new(@driver)
	activities = ActivitiesResource.new(@driver)

	#Setup
	@driver.navigate.to "https://stage.yesco.com/servizioreact/"
	login.enter_username(loginname)
	login.enter_password(password)
	login.sign_in()

	#Text Examples
	it "Open the Contracts Resource" do
		home.open_resource(resource1)
		recordtest = contracts.top_ref.text
		expect(recordtest).not_to eql("")
	end

	it "Export the Contracts grid" do
		contracts.export_grid()
	end
	
	it "Perform a column header search in the ID column" do
		contracts.search_id(idsearch)
		
		expect(contracts.top_ref.text).to include(idsearch)
		contracts.search_reset()
	end
		
	it "Perform a column header search in the NAME column" do
		contracts.search_name(namesearch)
		
		expect(contracts.top_name.text.downcase).to include(namesearch.downcase)
		contracts.search_reset()
	end

	it "Create a Contract record" do
		contracts.new_contract()
		contracts.name(contractname)
		contracts.link_customer(customername)
		contracts.details(contractdetails)
		contracts.type(contracttype)
		contracts.save_close()
	
		expect(contracts.top_name.text.downcase).to include(contractname.downcase)
	end
  
end