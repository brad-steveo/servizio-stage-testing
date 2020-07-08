require "selenium-webdriver"
require "rspec"
require "require_all"
require_all "#Classes"

describe "Performes a search in various Settings resources" do
	it "Verifies that the search returns the proper records" do

		@driver = Selenium::WebDriver.for :chrome

		#Test Variables
		timestamp = Time.now.strftime("%m/%d/%Y %I:%M:%S")
		loginname = "masterchief@yesco.com"
		password = "MCyesco123"
    searchjoblines = "stage"
    searchinvoicelines = "bombay"
    searchdocuments = "google"

		#Go to page
		@driver.navigate.to "https://stage.yesco.com/servizio/"

		#Logging in
		login = ServizioLoginPage.new(@driver)
		login.enter_loginname(loginname)
		login.enter_password(password)
		login.sign_in()

    #Click on Settings > Job Lines and use Google Search
    settings = SettingsResource.new(@driver)
    settings.open_settings()
    settings.open_joblines()
    joblines = JobLinesResource.new(@driver)
    joblines.search_joblines(searchjoblines)

    print "Job Lines Search: \n"
    print "%s \n" % joblines.top_jobname.text
    print "\n"
    expect(joblines.top_jobname.text.downcase).to include(searchjoblines.downcase)

    #Click on Settings > Invoice Lines and use Google Search
    settings.open_settings()
    settings.open_invoicelines()
    invoicelines = InvoiceLinesResource.new(@driver)
    invoicelines.search_invoicelines(searchinvoicelines)

    print "Invoice Lines Search: \n"
    print "%s \n" % invoicelines.top_customername.text
    print "\n"
    expect(invoicelines.top_customername.text.downcase).to include(searchinvoicelines.downcase)

    #Click on Settings > Documents and use Google Search
    settings.open_settings()
    settings.open_documents()
    documents = DocumentsResource.new(@driver)
    documents.search_documents(searchdocuments)

    print "Documents Search: \n"
    print "%s \n" % documents.top_description.text
    print "\n"
    expect(documents.top_name.text.downcase + documents.top_description.text.downcase).to include(searchdocuments.downcase)


	end
end
