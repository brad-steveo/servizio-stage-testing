require "selenium-webdriver"
require "rspec"
require "require_all"
require_all "#Classes"

describe "Test Name" do

	@driver = Selenium::WebDriver.for :chrome

	#Test Variables
  timestamp = Time.now.strftime("%m/%d/%Y %I:%M:%S")
  dateonly = Time.now.strftime("%m/%d/%Y")
	loginname = "bstevenson@yesco.com"
	password = "BSyesco2113"
  resource1 = "Patrols"
  idsearch = "1500"
	namesearch = "Selenium Test"
	submittedname = "Selenium Test #{timestamp}"
	location = "RM - Salt Lake"

	#Test Classes
	login = ServizioLogin.new(@driver)
  home = ServizioHome.new(@driver)
  patrols = PatrolsResource.new(@driver)

	#Setup
	@driver.navigate.to "https://dev.yesco.com/servizioreact/"
	login.enter_username(loginname)
	login.enter_password(password)
	login.sign_in()

	#Text Examples
	it "Perform a column header search in the ID column" do
		home.open_resource(resource1)
		patrols.old_patrols()
		patrols.search_id(idsearch)

		expect(patrols.top_ref.text.downcase).to include(idsearch.downcase)
	end

  it "Perform a column header search in the NAME column" do
		patrols.search_reset()
		patrols.search_name(namesearch)

		expect(patrols.top_name.text.downcase).to include(namesearch.downcase)
  end

	it "Create a patrol record" do
		patrols.search_reset()
		patrols.old_patrols()
		patrols.new_patrol()
		patrols.submitted_name(submittedname)
		patrols.location(location)
		patrols.save_close()

		expect(patrols.top_name.text.downcase).to include(submittedname.downcase)
	end

	#Make Inactive
	#Activity Creation
	#Print/Email
	
end
