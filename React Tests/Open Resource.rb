require "selenium-webdriver"
require "rspec"
require "require_all"
require_all "#Classes"

describe "Resource Test" do

	@driver = Selenium::WebDriver.for :chrome

	#Test Variables
	loginname = "bstevenson@yesco.com"
	password = "BSyesco2113"
	resource1 = "Activities"
	resource2 = "Patrols"
	resource3 = "Estimates"
	resource4 = "Jobs"
	resource5 = "Invoices"
	resource6 = "Customers"
	resource7 = "Job Lines"
	resource8 = "Invoice Lines"
	resource9 = "Contacts"
	resource10 = "Contracts"
	respirce11 = "Documents"
	resource12 = "Routes"
	resource13 = "Scheduler"

	#Test Classes
	login = ServizioLogin.new(@driver)
	home = ServizioHome.new(@driver)
	activities = ActivitiesResource.new(@driver)
	patrols = PatrolsResource.new(@driver)
	estimates = EstimatesResource.new(@driver)
	jobs = JobsResource.new(@driver)
	invoices = InvoicesResource.new(@driver)
	customers = CustomersResource.new(@driver)
	contacts = ContactsResource.new(@driver)
	routes = RoutesResource.new(@driver)

	#Setup
	@driver.navigate.to "https://dev.yesco.com/servizioreact/"
	login.enter_username(loginname)
	login.enter_password(password)
	login.sign_in()

	#Text Examples
	it "Open the Activities Resource" do
		home.open_resource(resource1)
		recordtest = activities.top.text
		expect(recordtest).not_to eql("")
	end

	it "Export the Activities grid" do
		activities.export_grid()
		home.close_tab()
	end

	it "Open the Patrols Resource" do
		home.open_resource(resource2)
		recordtest = patrols.top.text
		expect(recordtest).not_to eql("")
	end

	it "Export the Patrols grid" do
		patrols.export_grid()
		home.close_tab()
	end

	it "Open the Estimates Resource" do
		home.open_resource(resource3)
		recordtest = estimates.top.text
		expect(recordtest).not_to eql("")
	end

	it "Export the Estimates grid" do
		estimates.export_grid()
		home.close_tab()
	end

	it "Open the Jobs Resource" do
		home.open_resource(resource4)
		recordtest = jobs.top.text
		expect(recordtest).not_to eql("")
	end

	it "Export the Jobs grid" do
		jobs.export_grid()
		home.close_tab()
	end

	it "Open the Invoices Resource" do
		home.open_resource(resource5)
		recordtest = invoices.top.text
		expect(recordtest).not_to eql("")
	end

	it "Export the Invoices grid" do
		invoices.export_grid()
		home.close_tab()
	end

	it "Open the Customers Resource" do
		home.open_resource(resource6)
		recordtest = customers.top.text
		expect(recordtest).not_to eql("")
	end

	it "Export the Customers grid" do
		customers.export_grid()
		home.close_tab()
	end

	#Job Lines Resource tests need to go here when ready.

	#Invoice Lines Resource tests need to go here when ready.

	it "Open the Contacts Resource" do
		home.open_resource(resource9)
		recordtest = contacts.top.text
		expect(recordtest).not_to eql("")
	end

	it "Export the Contacts grid" do
		contacts.export_grid()
		home.close_tab()
	end

	#Contracts Resource tests need to go here when ready.

	#Documents Resource tests need to go here when ready.

	it "Opens the Routes Resource" do
		home.open_resource(resource12)
		expect(routes.map()).to exist
	end

end
