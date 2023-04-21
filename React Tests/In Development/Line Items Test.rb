require "selenium-webdriver"
require "rspec"
require "require_all"
require_all "/Users/Brad/Documents/YESCO Stage Testing/servizio-stage-testing/React Tests/#Classes"

describe "Template" do

	@driver = Selenium::WebDriver.for :chrome
    #Test Variables
    timestamp = Time.now.strftime("%m/%d/%Y %I:%M:%S")
    dateonly = Time.now.strftime("%m/%d/%Y")
    loginname = "seleniumuser@yesco.com"
    password = "SUyesco123"
    resource1 = "Jobs"
    resource2 = "Invoices"
    resource3 = "Job Lines"
    resource4 = "Invoice Lines"

	#Test Classes
	login = ServizioLogin.new(@driver)
	home = ServizioHome.new(@driver)
    jobs = JobsResource.new(@driver)
    invoices = InvoicesResource.new(@driver)
	
	#Setup
	@driver.navigate.to "https://stage.yesco.com/servizioreact/"
	login.enter_username(loginname)
	login.enter_password(password)
	login.sign_in()

	#Text Examples
    it "First Example" do
        home.open_resource(resource1)
        
    end
  
end