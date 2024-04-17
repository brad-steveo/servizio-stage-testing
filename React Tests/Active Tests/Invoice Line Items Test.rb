require "selenium-webdriver"
require "rspec"
require "require_all"
require_all "/Users/Brad/Documents/YESCO Stage Testing/servizio-stage-testing/React Tests/#Classes"

describe "Invoice Line Items Test" do

	@driver = Selenium::WebDriver.for :chrome
    #Test Variables
    timestamp = Time.now.strftime("%m/%d/%Y %I:%M:%S")
    dateonly = Time.now.strftime("%m/%d/%Y")
    loginname = "seleniumuser@yesco.com"
    password = "SUyesco123"
    resource1 = "Invoices"
    resource2 = "Invoice Lines"
    invoicesearch = '1728'
    invoicelinedesc = "Selenium Test Invoice Line #{timestamp}"

	#Test Classes
	login = ServizioLogin.new(@driver)
	home = ServizioHome.new(@driver)
    invoices = InvoicesResource.new(@driver)
    invoicelines = InvoiceLinesResource.new(@driver)
	
	#Setup
	@driver.navigate.to "https://stage.yesco.com/servizioreact/"
	login.enter_username(loginname)
	login.enter_password(password)
	login.sign_in()

	#Text Examples
    it "Create a new line item on an invoice and verify in the Invoice Lines resource" do
        home.open_resource(resource1)
        invoices.search_id(invoicesearch)
        invoices.top_open()
        sleep(2)
        invoices.top_line(invoicelinedesc)
        invoices.save_close()
        home.first_tab_close()
        home.open_resource(resource2)
        
        expect(invoicelines.top_description.text.downcase).to include(invoicelinedesc.downcase)
        home.first_tab_close()
    end

    it "Clean up invoice lines" do
        home.open_resource(resource1)
        invoices.search_id(invoicesearch)
        invoices.top_open()
        invoices.clear_lines()
        invoices.save_close()
    end
  
end