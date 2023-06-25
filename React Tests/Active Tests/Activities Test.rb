require "selenium-webdriver"
require "rspec"
require "require_all"
require_all "/Users/Brad/Documents/YESCO Stage Testing/servizio-stage-testing/React Tests/#Classes"

describe "Activities Test" do

  @driver = Selenium::WebDriver.for :chrome
  #Test Variables
  timestamp = Time.now.strftime("%m/%d/%Y %I:%M:%S")
  dateonly = Time.now.strftime("%m/%d/%Y")
  loginname = "masterchief@yesco.com"
  password = "MCyesco123"
  resource1 = "Activities"
  idsearch = "2675"
  descsearch = "Selenium Test Activity"
  activityreason = "Action Required"
	activitydescription = "Selenium Test #{timestamp}"

	#Test Classes
	login = ServizioLogin.new(@driver)
	home = ServizioHome.new(@driver)
	activities = ActivitiesResource.new(@driver)

	#Setup
	@driver.navigate.to "https://stage.yesco.com/servizioreact/"
	login.enter_username(loginname)
	login.enter_password(password)
	login.sign_in()

	#Text Examples
  it "Open the Activities Resource" do
    home.open_resource(resource1)
    recordtest = activities.top_ref.text
		expect(recordtest).not_to eql("")
  end

  it "Export the Activities grid" do
    activities.export_grid()
  end

  it "Perform a column header search in the ID column" do
    activities.search_reset()
    activities.search_id(idsearch)
    
    expect(activities.top_ref.text).to include(idsearch)
    activities.search_reset()
  end
    
  it "Perform a column header search in the DESCRIPTION column" do
    activities.search_description(descsearch)
    
    expect(activities.top_description.text.downcase).to include(descsearch.downcase)
    activities.search_reset()
  end

  it "Create an Activity record" do
    activities.new_activity()
    activities.reason(activityreason)
    activities.description(activitydescription)
    activities.save_close()

    expect(activities.top_description.text.downcase).to include(activitydescription.downcase)
  end

  it "Complete an Activity record" do
    activities.top_open()
    activities.complete_activity_checkbox()
    activities.save_close()

    expect(activities.top_completed.text).not_to eql("")
  end
  
end