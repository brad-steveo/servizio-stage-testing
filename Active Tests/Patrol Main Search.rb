require "selenium-webdriver"
require "rspec"
require "require_all"
require_all "#Classes"

describe "Performes a search in the Patrols resource" do
	it "Verifies that the search returns the proper records" do

		@driver = Selenium::WebDriver.for :chrome

		#Test Variables
		timestamp = Time.now.strftime("%m/%d/%Y %I:%M:%S")
		loginname = "masterchief@yesco.com"
		password = "MCyesco123"
		searchpatrol = "06/25/2019"

		#Go to page
		@driver.navigate.to "https://stage.yesco.com/servizio/"

		#Logging in
		login = ServizioLoginPage.new(@driver)
		login.enter_loginname(loginname)
		login.enter_password(password)
		login.sign_in()

		#Click on Patrols, Expose patrols older than 90 days, and use Google Search
		patrols = PatrolsResource.new(@driver)
		patrols.open_patrols()
		patrols.grid_options()
		patrols.show_oldpatrols()

		patrols.search_patrol(searchpatrol)

		print "Patrols Search: \n"
		print "%s \n" % patrols.top.text + patrols.top_customer.text
		print "\n"
		print "\n"
		expect(patrols.top.text.downcase + patrols.top_customer.text.downcase).to include(searchpatrol.downcase)

	end
end
