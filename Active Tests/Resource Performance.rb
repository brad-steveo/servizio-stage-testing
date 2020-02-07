require "selenium-webdriver"
require "rspec"
require "require_all"
require_all "#Classes"

describe "Cycles through each main resource" do
	it "Posts load metrics to command line" do

		@driver = Selenium::WebDriver.for :chrome

		#Test Variables
		timestamp = Time.now.strftime("%m/%d/%Y %I:%M:%S")
		loginname = "masterchief@yesco.com"
		password = "yesco123"

		#Go to page
		@driver.navigate.to "https://stage.yesco.com/servizio/"

		#Logging in
		login = ServizioLoginPage.new(@driver)
		login.enter_loginname(loginname)
		login.enter_password(password)
		login.sign_in()

		#Click on Activities and get load metrics
		activities = ActivitiesResource.new(@driver)
		activities.open_activities()
		activities.resource_performance()

		#Click on Patrols and get load metrics
		patrols = PatrolsResource.new(@driver)
		patrols.open_patrols()
		patrols.resource_performance()

		#Click on Jobs and get load metrics
		jobs = JobsResource.new(@driver)
		jobs.open_jobs()
		jobs.resource_performance()

		#Click on Estimates and get load metrics
		estimates = EstimatesResource.new(@driver)
		estimates.open_estimates()
		estimates.resource_performance()

		#Click on Invoices and get load metrics
		invoices = InvoicesResource.new(@driver)
		invoices.open_invoices()
		invoices.resource_performance()

		#Click on Customers and get load metrics
		customers = CustomersResource.new(@driver)
		customers.open_customers()
		customers.resource_performance()

		#Click on Settings > Job Lines and get load metrics
		settings = SettingsResource.new(@driver)
		settings.open_settings()
		settings.open_joblines()
		joblines = JobLinesResource.new(@driver)
		joblines.resource_performance

		#Click on Settings > Invoice Lines and get load metrics
		settings.open_settings()
		settings.open_invoicelines()
		invoicelines = InvoiceLinesResource.new(@driver)
		invoicelines.resource_performance

		#Click on Settings > Documents and get load metrics
		settings.open_settings()
		settings.open_documents()
		documents = DocumentsResource.new(@driver)
		documents.resource_performance

	end
end
