require "selenium-webdriver"
require "rspec"
require "require_all"
require_all "/Users/Brad/Documents/YESCO Stage Testing/servizio-stage-testing/React Tests/#Classes"

describe "QBO Sync Test" do

	@driver = Selenium::WebDriver.for :chrome
    #Test Variables
    timestamp = Time.now.strftime("%m/%d/%Y %I:%M:%S")
    dateonly = Time.now.strftime("%m/%d/%Y")
    loginname = "seleniumuser@yesco.com"
    password = "SUyesco123"
    resource1 = "Jobs"
	resource2 = "Invoices"
	jobsearch = "job: Selenium Test Job"
	jobsearchref = "1001"

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
    it "Open Selenium Test Job" do
		home.open_resource(resource1)
		recordtest = jobs.top_ref.text
		expect(recordtest).not_to eql("")
		jobs.search_id(jobsearchref)
		jobs.top_open()  
    end

	it "Create an invoice from a job and sync to QBO" do
		jobs.createinvoicefromjob()
		invoices.save()
		sleep(4)
		invoices.sync_to_qbo()
		home.second_tab_close()
		home.first_tab_close()
		home.open_resource(resource2)
		print "Invoice: %s" % invoices.top_ref.text
		print "\nQBID: "
		print invoices.top_qbid.text
		print "\n"
		expect(invoices.top_qbid.text).not_to eq("")
	end
  
end