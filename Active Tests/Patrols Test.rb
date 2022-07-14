require "selenium-webdriver"
require "rspec"
require "webdrivers"
require "watir"
require "require_all"
require_all "#Classes"

	describe 'Patrols Test' do

		@driver = Selenium::WebDriver.for :chrome

		#Test Variables
		timestamp = Time.now.strftime("%m/%d/%Y %I:%M:%S")
    dateonly = Time.now.strftime("%m/%d/%Y")
		loginname = "masterchief@yesco.com"
		password = "MCyesco123"
		searchpatrol = "06/25/2019"
    searchpatrolid = "1001"
		searchpatrolname = "parleys"
    submittedname = "Selenium Test #{timestamp}"
    location = "Test Site"
    serviceneeded = "Service is needed #{timestamp}"
    customer = "Selenium Test Customer"
    activityreason = 'Sales'
    activitydescription = "Description #{timestamp}"
    emailaddress = ', bstevenson@yesco.com'
    emailsubject = "Patrol Email (Selenium) #{timestamp}"
    emailmessage = 'Selenium Test Email Message'

		#Go to page
		@driver.navigate.to "https://stage.yesco.com/servizio/"
    @driver.manage.window.resize_to(1400, 1024)

		#Logging in
		login = ServizioLoginPage.new(@driver)
		login.enter_loginname(loginname)
		login.enter_password(password)
		login.sign_in()

		patrols = PatrolsResource.new(@driver)
    buffers = Buffers.new(@driver)
    it "Performes a global search in the Patrols resource" do
  		patrols.open_patrols()
  		patrols.grid_options()
  		patrols.show_oldpatrols()
  		patrols.search_patrol(searchpatrol)

  		expect(patrols.top.text.downcase + patrols.top_customer.text.downcase).to include(searchpatrol.downcase)
	  end

    it "Performes a column header search in the ID column" do
      patrols.search_reset()
      buffers.ajax_buffer()
      patrols.search_patrolid(searchpatrolid)
      buffers.ajax_buffer()

      expect(patrols.top_refnumber.text).to include(searchpatrolid)
    end

    it "Performes a column header search in the NAME column" do
      patrols.search_reset()
      buffers.ajax_buffer()
      patrolswait = Selenium::WebDriver::Wait.new(:timeout => 5)
      patrolswait.until {patrols.search_patrolid_field['value'].empty? == true}
      patrols.search_patrolname(searchpatrolname)
      buffers.ajax_buffer()

      expect(patrols.top.text.downcase).to include(searchpatrolname)
    end

    it "Creates a new patrol record" do
      patrols.search_reset()
  		currenttopref = patrols.top_refnumber
  		patrols.create_patrol()
  		patrols.customer(customer)
  		buffers.ajax_buffer()
  		patrols.submitted_name(submittedname)
  		patrols.location(location)
  		patrols.service_needed(serviceneeded)
  		patrols.save_close()
  		wait = Selenium::WebDriver::Wait.new(:timeout => 5)
  		wait.until {patrols.top_refnumber != currenttopref}

  		expect(patrols.top.text).to include(submittedname)
    end

    activities = ActivitiesResource.new(@driver)
    it "Creates a new activity on a patrol record" do
      patrols.top_open()
      patrols.activities_tab()
      patrols.actions()
      patrols.actions_createactivity()
      activities.reason(activityreason)
      activities.description(activitydescription)
      activities.save_close()
      iframebuffer = Selenium::WebDriver::Wait.new(:timeout => 10)
      iframebuffer.until {patrols.top_activitydescription.text == activitydescription}

      expect(patrols.top_activitydescription.text).to eql(activitydescription)
      patrols.save_close()
    end

    printemail = PrintEmailPage.new(@driver)
    it "Opens the top patrol record and emails it from Servizio" do
      patrols.top_open()
      patrols.actions()
      patrols.actions_printemail()
      printemail.ok()
      printemail.email_address(emailaddress)
      printemail.email_subject(emailsubject)
      printemail.email_message(emailmessage)
      printemail.email_close()
      patrols.save_close()
      patrols.top_datesent

      expect(patrols.top_datesent.text).to eql(dateonly)
    end

    it "Makes top patrol inactive using grid actions menu" do
      toppatrol = patrols.top_refnumber.text
      patrols.top_actions()
      patrols.actions_makeinactive()

      expect(patrols.top_refnumber.text).not_to eql(toppatrol)
    end

end
