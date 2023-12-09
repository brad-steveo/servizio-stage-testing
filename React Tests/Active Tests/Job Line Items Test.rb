require "selenium-webdriver"
require "rspec"
require "require_all"
require_all "/Users/Brad/Documents/YESCO Stage Testing/servizio-stage-testing/React Tests/#Classes"

describe "Job Line Items Test" do

	@driver = Selenium::WebDriver.for :chrome
    #Test Variables
    timestamp = Time.now.strftime("%m/%d/%Y %I:%M:%S")
    dateonly = Time.now.strftime("%m/%d/%Y")
    loginname = "seleniumuser@yesco.com"
    password = "SUyesco123"
    resource1 = "Jobs"
    resource2 = "Job Lines"
    jobsearch = '1100'
    joblinedesc = "Selenium Test Job Line #{timestamp}"

	#Test Classes
	login = ServizioLogin.new(@driver)
	home = ServizioHome.new(@driver)
    jobs = JobsResource.new(@driver)
    joblines = JobLinesResource.new(@driver)
	
	#Setup
	@driver.navigate.to "https://stage.yesco.com/servizioreact/"
	login.enter_username(loginname)
	login.enter_password(password)
	login.sign_in()

	#Text Examples
    it "Create a new line item on a job and verify in the Job Lines resource" do
        home.open_resource(resource1)
        jobs.search_id(jobsearch)
        jobs.top_open()
        jobs.top_line(joblinedesc)
        jobs.save_close()
        home.first_tab_close()
        home.open_resource(resource2)
        
        expect(joblines.top_description.text.downcase).to include(joblinedesc.downcase)
        home.first_tab_close()
    end

    it "Clean up job lines" do
        home.open_resource(resource1)
        jobs.search_id(jobsearch)
        jobs.top_open()
        jobs.clear_lines()
        jobs.save_close()
        home.first_tab_close()
    end

end