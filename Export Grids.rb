require "selenium-webdriver"
require "rspec"
require_relative "Class - Login Page.rb"
require_relative "Class - Patrols Resource.rb"
require_relative "Class - Jobs Resource.rb"
require_relative "Class - Estimates Resource.rb"
require_relative "Class - Invoices Resource.rb"
require_relative "Class - Customers Resource.rb"
require_relative "Class - Settings Page.rb"
require_relative "Class - Job Lines Resource.rb"
require_relative "Class - Invoice Lines Resource.rb"

describe "Exports grid in each resource" do
	it "Verifies through prompts in command line" do

		@driver = Selenium::WebDriver.for :chrome

		# Test Variables
		timestamp = Time.now.strftime("%m/%d/%Y %I:%M:%S")
		loginname = "masterchief@yesco.com"
		password = "yesco123"

		# Go to page
		@driver.navigate.to "https://stage.yesco.com/servizio/"

		# Logging in
		login = ServizioLoginPage.new(@driver)
		login.enter_loginname(loginname)
		login.enter_password(password)
		login.sign_in()

		# Click on Patrols and export grid
		patrols = PatrolsResource.new(@driver)
		patrols.open_patrols()
		patrols.grid_options()
		patrols.export_patrols()

		print("Patrols Exported")
		print("\n")

		# Click on Jobs and export grid
		jobs = JobsResource.new(@driver)
		jobs.open_jobs()
		jobs.grid_options()
		jobs.export_jobs()

		print("Jobs Exported")
		print("\n")

		# Click on Estimates and export grid
		estimates = EstimatesResource.new(@driver)
		estimates.open_estimates()
		estimates.grid_options()
		estimates.export_estimates()

		print("Estimates Exported")
		print("\n")

		# Click on Invoices and export grid
		invoices = InvoicesResource.new(@driver)
		invoices.open_invoices()
		invoices.grid_options()
		invoices.export_invoices()

		print("Invoices Exported")
		print("\n")

		# Click on Customers and export grid
		customers = CustomersResource.new(@driver)
		customers.open_customers()
		customers.grid_options()
		customers.export_customers()
		sleep(2)

		print("Customers Exported")
		print("\n")

		# Click on Settings > Job Lines and export grid
		settings = SettingsResource.new(@driver)
		settings.open_settings()
		settings.open_joblines()
		joblines = JobLinesResource.new(@driver)
		joblines.grid_options()
		joblines.export_joblines()
		sleep(2)

		print("Job Lines Exported")
		print("\n")

		# Click on Settings > Invoice Lines and export grid
		settings.open_settings()
		settings.open_invoicelines()
		invoicelines = InvoiceLinesResource.new(@driver)
		invoicelines.grid_options()
		invoicelines.export_invoicelines()
		sleep(2)

		print("Invoice Lines Exported")
		print("\n")
	end
end
