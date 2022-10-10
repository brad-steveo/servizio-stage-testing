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

	#Test Classes
	login = ServizioLogin.new(@driver)
	home = ServizioHome.new(@driver)
	activities = ActivitiesResource.new(@driver)
	patrols = PatrolsResource.new(@driver)
	estimates = EstimatesResource.new(@driver)

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

	#Contracts Resource tests need to go here when ready.

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

end
