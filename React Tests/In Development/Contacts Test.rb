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
    resource2 = "Customers"
    idsearch = "1041"
    namesearch = "Selenium Test Contact"
    contactlink = "Selenium Test Contact"
    contactname = "Selenium Test #{timestamp}"
    contactjobtitle = "Selenium"
    contactphone = "5553331111"
    contactemail = "noreply@yesco.com"
    contactdescription = "Description for Selenium Test #{timestamp}"

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
    it "Open the Contacts Resource" do
        home.open_resource(resource1)
        recordtest = contacts.top_ref.text
		expect(recordtest).not_to eql("")
    end

    it "Export the Contacts grid" do
        contacts.export_grid()
    end
    
    it "Perform a column header search in the ID column" do
        contacts.search_id(idsearch)
        
        expect(contacts.top_ref.text).to include(idsearch)
        contacts.search_reset()
    end
        
    it "Perform a column header search in the NAME column" do
        contacts.search_name(namesearch)
        
        expect(contacts.top_name.text.downcase).to include(namesearch.downcase)
        contacts.search_reset()
    end

    it "Go to Customers Resource, open top record, link an existing contact" do
        home.close_tab()
        home.open_resource(resource2)
        recordtest = contacts.top_ref.text
		expect(recordtest).not_to eql("")

        customers.top_open()
        customers.link_existing_contact(contactlink)
        customers.make_top_contact_billing()
        customers.make_top_contact_site()
        customers.save_close()
        expect(customers.top_billing_contact).text.downcase.to include(contactlink.downcase)
        expect(customers.top_site_contact).text.downcase.to include(contactlink.downcase)
    end

    it "Go to Customers Resource, open top record, add a new contact" do
        customers.top_open()
        customers.add_new_contact()
        contact.name(contactname)
        contact.job_title(contactjobtitle)
        contact.phone(contactphone)
        contact.email(contactemail)
        contact.description(contactdescription)
        contact.save_close()
        customers.make_top_contact_billing()
        customers.make_top_contact_site()
        customers.save_close()
        expect(customers.top_billing_contact).text.downcase.to include(contactname.downcase)
        expect(customers.top_site_contact).text.downcase.to include(contactname.downcase)
    end
  
end