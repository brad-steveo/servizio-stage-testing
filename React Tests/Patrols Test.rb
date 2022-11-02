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
	#it "Perform a column header search in the ID column" do
		#home.open_resource(resource1)
	#end

  #it "Perform a column header search in the NAME column" do

  #end

  it "Create a new patrol record" do
    home.open_resource(resource1)
    sleep(3)
    patrols.old_patrols()
    sleep(3)
    patrols.search_id(idsearch)
    sleep(3)
  end

end
