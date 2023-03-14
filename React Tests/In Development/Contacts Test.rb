require "selenium-webdriver"
require "rspec"
require "require_all"
require_all "/Users/Brad/Documents/YESCO Stage Testing/servizio-stage-testing/React Tests/#Classes"

describe "Contacts Test" do

	@driver = Selenium::WebDriver.for :chrome
    #Test Variables
    timestamp = Time.now.strftime("%m/%d/%Y %I:%M:%S")
    dateonly = Time.now.strftime("%m/%d/%Y")
    loginname = "masterchief@yesco.com"
    password = "MCyesco123"
    resource1 = "Contacts"

	#Test Classes
	login = ServizioLogin.new(@driver)
	home = ServizioHome.new(@driver)
    contacts = ContactsResource.new(@driver)
	activities = ActivitiesResource.new(@driver)
    customers = CustomersResource.new(@driver)

	#Setup
	@driver.navigate.to "https://stage.yesco.com/servizioreact/"
	login.enter_username(loginname)
	login.enter_password(password)
	login.sign_in()

	#Text Examples
    it "First Example" do
        home.open_resource(resource1)
        recordtest = contacts.top_ref.text
		expect(recordtest).not_to eql("")
    end

    it "Export the Activities grid" do
        contacts.export_grid()
    end
    
    it "Perform a column header search in the ID column" do
        contacts.search_id(idsearch)
        
        expect(contacts.top_ref.text).to include(idsearch)
        contacts.search_reset()
    end
        
    it "Perform a column header search in the DESCRIPTION column" do
        contacts.search_description(descsearch)
        
        expect(contacts.top_description.text.downcase).to include(descsearch.downcase)
        contacts.search_reset()
    end
  
end