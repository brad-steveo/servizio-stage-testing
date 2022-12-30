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
	activityreason = "Sales"
	activitycontactmethod = "Email"
	activitydescription = "Selenium Test #{timestamp}"
	emailaddressfrom = "bstevenson@yesco.com"
	emailsubject = "Patrol Email (Selenium) #{timestamp}"
	emailmessage = 'Selenium Test Email Message'

	#Test Classes
	login = ServizioLogin.new(@driver)
  home = ServizioHome.new(@driver)
  patrols = PatrolsResource.new(@driver)
	activities = ActivitiesResource.new(@driver)
	printemail = PrintEmailResource.new(@driver)

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

	it "Open top record and create an activity" do
		patrols.top_open()
		patrols.create_activity()
		activities.reason(activityreason)
		activities.contact_method(activitycontactmethod)
		activities.description(activitydescription)
		activities.save_close()

		expect(patrols.top_activity_description.text.downcase).to include(activitydescription.downcase)

		patrols.save_close()
	end

	it "Open top record and email" do
		currentsent = patrols.top_sent.text
		patrols.top_open()
		patrols.print_email()
		printemail.email_from(emailaddressfrom)
		printemail.email_subject(emailsubject)
		printemail.email_message(emailmessage)
		printemail.save_close()
		patrols.save_close()

		expect(patrols.top_sent.text).not_to eql(currentsent)
	end

	it "Make top record inactive using grid actions" do

	end

end
