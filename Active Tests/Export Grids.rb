require "selenium-webdriver"
require "rspec"
require "require_all"
require_all "#Classes"

describe "Exports grid in each resource" do
	it "Verifies through prompts in command line" do

		@driver = Selenium::WebDriver.for :chrome

		#Test Variables
		timestamp = Time.now.strftime("%m/%d/%Y %I:%M:%S")
		loginname = "masterchief@yesco.com"
		password = "MCyesco123"

		#Go to page
		@driver.navigate.to "https://stage.yesco.com/servizio/"

		#Logging in
		login = ServizioLoginPage.new(@driver)
		login.enter_loginname(loginname)
		login.enter_password(password)
		login.sign_in()

		#Click on Activities and export grid
		activities = ActivitiesResource.new(@driver)
		activities.open_activities()
		activities.grid_options()
		activities.export_activities()

		print("Activities Exported")
		print("\n")

		#Click on Contracts and export grid
		contracts = ContractsResource.new(@driver)
		contracts.open_contracts()
		contracts.grid_options()
		contracts.export_contracts()

		print("Contracts Exported")
		print("\n")

		#Click on Patrols and export grid
		patrols = PatrolsResource.new(@driver)
		patrols.open_patrols()
		patrols.grid_options()
		patrols.export_patrols()

		print("Patrols Exported")
		print("\n")

		#Click on Jobs and export grid
		jobs = JobsResource.new(@driver)
		jobs.open_jobs()
		jobs.grid_options()
		jobs.export_jobs()

		print("Jobs Exported")
		print("\n")

		#Click on Estimates and export grid
		estimates = EstimatesResource.new(@driver)
		estimates.open_estimates()
		estimates.grid_options()
		estimates.export_estimates()

		print("Estimates Exported")
		print("\n")

		#Click on Invoices and export grid
		invoices = InvoicesResource.new(@driver)
		invoices.open_invoices()
		invoices.grid_options()
		invoices.export_invoices()

		print("Invoices Exported")
		print("\n")

		#Click on Customers and export grid
		customers = CustomersResource.new(@driver)
		customers.open_customers()
		customers.grid_options()
		customers.export_customers()

		print("Customers Exported")
		print("\n")

		#Click on Settings > Job Lines and export grid
		settings = SettingsResource.new(@driver)
		settings.open_settings()
		settings.open_joblines()
		joblines = JobLinesResource.new(@driver)
		joblines.grid_options()
		joblines.export_joblines()

		print("Job Lines Exported")
		print("\n")

		#Click on Settings > Contacts and export grid
		settings.open_settings()
		settings.open_contacts()
		contacts = ContactsResource.new(@driver)
		contacts.grid_options()
		contacts.export_contacts()

		print("Contacts Exported")
		print("\n")

		#Click on Settings > Documents and export grid
		settings.open_settings()
		settings.open_documents()
		documents = DocumentsResource.new(@driver)
		documents.grid_options()
		documents.export_documents()

		print("Documents Exported")
		print("\n")

		#Click on Settings > Invoice Lines and export grid
		settings.open_settings()
		settings.open_invoicelines()
		invoicelines = InvoiceLinesResource.new(@driver)
		invoicelines.grid_options()
		invoicelines.export_invoicelines()

		settings.open_settings() #Using this as a buffer so the last file has time to download

		print("Invoice Lines Exported")
		print("\n")
	end
end
