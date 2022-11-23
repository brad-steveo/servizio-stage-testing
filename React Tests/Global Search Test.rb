require "selenium-webdriver"
require "rspec"
require "require_all"
require_all "#Classes"

describe "Global Search Test" do

	@driver = Selenium::WebDriver.for :chrome

	#Test Variables
  timestamp = Time.now.strftime("%m/%d/%Y %I:%M:%S")
  dateonly = Time.now.strftime("%m/%d/%Y")
	loginname = "bstevenson@yesco.com"
	password = "BSyesco2113"
  searchtest1 = "Patrol: 3200"
  searchtest2 = "Job: 2028"
  searchtest3 = "Estimate: 1117"
  searchtest4 = "Customer: 426079"

	#Test Classes
	login = ServizioLogin.new(@driver)
  home = ServizioHome.new(@driver)

	#Setup
	@driver.navigate.to "https://dev.yesco.com/servizioreact/"
	login.enter_username(loginname)
	login.enter_password(password)
	login.sign_in()

	#Text Examples
	it "Global Search Test Case 1" do
		home.global_search(searchtest1)
    expect(home.first_tab_title.text.downcase).to include(searchtest1.downcase)
    home.first_tab_close()
    home.global_search_clear()
	end

  it "Global Search Test Case 2" do
    home.global_search(searchtest2)
    expect(home.first_tab_title.text.downcase).to include(searchtest2.downcase)
    home.first_tab_close()
    home.global_search_clear()
  end

  it "Global Search Test Case 3" do
    home.global_search(searchtest3)
    expect(home.first_tab_title.text.downcase).to include(searchtest3.downcase)
    home.first_tab_close()
    home.global_search_clear()
  end

  it "Global Search Test Case 4" do
    home.global_search(searchtest4)
    expect(home.first_tab_title.text.downcase).to include(searchtest4.downcase)
    home.first_tab_close()
    home.global_search_clear()
  end

end