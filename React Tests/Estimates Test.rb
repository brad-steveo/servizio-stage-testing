require "selenium-webdriver"
require "rspec"
require "require_all"
require_all "#Classes"

describe "Estimates Test" do

  @driver = Selenium::WebDriver.for :chrome

  #Test Variables
  timestamp = Time.now.strftime("%m/%d/%Y %I:%M:%S")
  dateonly = Time.now.strftime("%m/%d/%Y")
  loginname = "masterchief@yesco.com"
  password = "MCyesco123"
  resource1 = "Estimates"
  idsearch = "1285"
  namesearch = "Selenium Test"

  #Test Classes
  login = ServizioLogin.new(@driver)
  home = ServizioHome.new(@driver)
  estimates = EstimatesResource.new(@driver)
  activities = ActivitiesResource.new(@driver)
  printemail = PrintEmailResource.new(@driver)

  #Setup
  @driver.navigate.to "https://stage.yesco.com/servizioreact/"
  login.enter_username(loginname)
  login.enter_password(password)
  login.sign_in()

  #Text Examples
  it "Perform a column header search in the ID column" do
    home.open_resource(resource1)
    estimates.search_id(idsearch)

    expect(estimates.top_ref.text.downcase).to include(idsearch.downcase)
  end

  it "Perform a column header search in the NAME column" do
    estimates.search_reset()
    estimates.search_name(namesearch)

    expect(estimates.top_name.text.downcase).to include(namesearch.downcase)
  end

end
