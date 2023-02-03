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
  namesearch = "Selenium Job"
  estimatename = "Selenium Estimate #{timestamp}"
  estimatetype = "Service"
  estimatecustomer = "1031"
  activityreason = "Sales"
  activitycontactmethod = "Email"
  activitydescription = "Selenium Test #{timestamp}"
  emailsubject = "Estimate Email (Selenium) #{timestamp}"
  emailmessage = "Selenium Test Email Message"

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

  it "Create an Estimate record" do
    estimates.search_reset()
    estimates.new_estimate()
    estimates.name(estimatename)
    estimates.type(estimatetype)
    estimates.customer_select(estimatecustomer)
    estimates.save_close()

    expect(estimates.top_name.text.downcase).to include(estimatename.downcase)
  end

  it "Open top record and create an activity" do
    estimates.top_open()
    estimates.create_activity()
    activities.reason(activityreason)
    activities.contact_method(activitycontactmethod)
    activities.description(activitydescription)
    activities.save_close()

    expect(estimates.top_activity_description.text.downcase).to include(activitydescription.downcase)

    estimates.cancel()
  end

  it "Open top record and email" do
    estimates.top_open()
    estimates.print_email()
    printemail.email_from(loginname)
    printemail.email_subject(emailsubject)
    printemail.email_message(emailmessage)
    printemail.email_close()
    estimates.cancel()
    home.close_tab()
    home.resource_search_clear()
    home.open_resource(resource1)

    expect(estimates.top_sent.text).not_to eql("")
  end

  it "Make top record inactive using grid actions" do
    toprecord = estimates.top_ref.text
    estimates.make_inactive()

    expect(estimates.top_ref.text).not_to eql(toprecord)
  end

end