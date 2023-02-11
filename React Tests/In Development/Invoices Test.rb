require "selenium-webdriver"
require "rspec"
require "require_all"
require_all "/Users/Brad/Documents/YESCO Stage Testing/servizio-stage-testing/React Tests/#Classes"

describe "Invoices Test" do

	@driver = Selenium::WebDriver.for :chrome
    #Test Variables
    timestamp = Time.now.strftime("%m/%d/%Y %I:%M:%S")
    dateonly = Time.now.strftime("%m/%d/%Y")
    loginname = "masterchief@yesco.com"
    password = "MCyesco123"
    resource1 = "Invoices"
    idsearch = "1024"
    customersearch = "Selenium Test Customer"
    activityreason = "Sales"
	activitycontactmethod = "Email"
	activitydescription = "Selenium Test #{timestamp}"

	#Test Classes
	login = ServizioLogin.new(@driver)
	home = ServizioHome.new(@driver)
    invoices = InvoicesResource.new(@driver)
	activities = ActivitiesResource.new(@driver)

	#Setup
	@driver.navigate.to "https://stage.yesco.com/servizioreact/"
	login.enter_username(loginname)
	login.enter_password(password)
	login.sign_in()

	#Text Examples
    it "Perform a column header search in the ID column" do
        home.open_resource(resource1)
        invoices.search_id(idsearch)

        expect(invoices.top_ref.text).to include(idsearch)
    end

    it "Perform a column header search in the CUSTOMER column" do
        invoices.search_reset()
        invoices.search_customer(customersearch)

        expect(invoices.top_customer.text.downcase).to include(customersearch.downcase)
    end

    it "Open top record and create an activity" do
        invoices.top_open()
        invoices.create_activity()
        activities.reason(activityreason)
        activities.contact_method(activitycontactmethod)
        activities.description(activitydescription)
        activities.save_close()
    
        expect(invoices.top_activity_description.text.downcase).to include(activitydescription.downcase)
    
        invoices.cancel()
      end

  
end
