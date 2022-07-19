require "selenium-webdriver"
require "rspec"
require "webdrivers"
require "watir"
require "require_all"
require_all "#Classes"

  describe 'Estimates Test' do

    @driver = Selenium::WebDriver.for :chrome

    #Test Variables
    timestamp = Time.now.strftime("%m/%d/%Y %I:%M:%S")
    dateonly = Time.now.strftime("%m/%d/%Y")
    loginname = "masterchief@yesco.com"
    password = "MCyesco123"
    searchestimate = "06/25/2019"
    searchestimateid = "1001"
    searchestimatename = "approved"
    select = "Selenium Test Customer"
    estimatename = "Selenium Job #{timestamp}"
    estimatelocation = "Test Site"
    estimatetype = "Service"
    estimatestage = "New"
    estimatepatrol = "1400"
    effective = (Date.today).strftime("%m/%d/%Y")
    expires = (Date.today + 10).strftime("%m/%d/%Y")
    nte = "1500"
    activityreason = 'Sales'
    activitydescription = "Description #{timestamp}"
    emailaddress = ', bstevenson@yesco.com'
    emailsubject = "Estimate Email (Selenium) #{timestamp}"
    emailmessage = 'Selenium Test Email Message'

    #Test Classes
    login = ServizioLoginPage.new(@driver)
    estimates = EstimatesResource.new(@driver)
    buffers = Buffers.new(@driver)
    activities = ActivitiesResource.new(@driver)
    printemail = PrintEmailPage.new(@driver)

    #Setup
    @driver.navigate.to "https://stage.yesco.com/servizio/"
    @driver.manage.window.resize_to(1400, 1024)
    login.enter_loginname(loginname)
    login.enter_password(password)
    login.sign_in()

    #Test Examples
    it "Performes a global search" do
      estimates.open_estimates()
      estimates.search_estimate(searchestimate)

      expect(estimates.top.text.downcase).to include(searchestimate.downcase)
    end

    it "Performes a column header search in the ID column" do
      estimates.search_reset()
      buffers.ajax_buffer()
      estimates.search_estimateid(searchestimateid)
      buffers.ajax_buffer()

      expect(estimates.top_refnumber.text).to include(searchestimateid)
    end

    it "Performes a column header search in the Name column" do
      estimates.search_reset()
      buffers.ajax_buffer()
      estimateswait = Selenium::WebDriver::Wait.new(:timeout => 5)
      estimateswait.until {estimates.search_estimateid_field['value'].empty? == true}
      estimates.search_estimatename(searchestimatename)
      buffers.ajax_buffer()

      expect(estimates.top.text.downcase).to include(searchestimatename)
    end

    it "Creates a new estimate record" do
      estimates.search_reset()
      currenttopref = estimates.top_refnumber.text
      estimates.create_estimate()
      estimates.select_customer(select)
      estimates.name(estimatename)
      sleep(1)
      estimates.location(estimatelocation)
      sleep(1)
      estimates.type(estimatetype)
      sleep(1)
      estimates.stage(estimatestage)
      sleep(1)
      estimates.effective_on(effective)
      sleep(1)
      estimates.expires_on(expires)
      sleep(1)
      estimates.nte(nte)
      sleep(1)
      estimates.save_close()
      wait = Selenium::WebDriver::Wait.new(:timeout => 5)
      wait.until {estimates.top_refnumber.text != currenttopref}

      expect(estimates.top.text).to include(estimatename)
      expect(estimates.top_stage.text).to include(estimatestage)
      expect(estimates.top_type.text).to include(estimatetype)
    end

    it "Creates a new activity on an estimate record" do
      estimates.top_open()
      estimates.activities_tab()
      estimates.actions()
      estimates.actions_createactivity()
      activities.reason(activityreason)
      activities.description(activitydescription)
      activities.save_close()
      iframebuffer = Selenium::WebDriver::Wait.new(:timeout => 10)
      iframebuffer.until {estimates.top_activitydescription.text == activitydescription}

      expect(estimates.top_activitydescription.text).to eql(activitydescription)
      estimates.save_close()
    end

    it "Opens the top estimate record and emails it from Servizio" do
      estimates.top_open()
      estimates.actions()
      estimates.actions_printemail()
      printemail.additional_notes()
      printemail.ok()
      printemail.email_address(emailaddress)
      printemail.email_subject(emailsubject)
      printemail.email_message(emailmessage)
      printemail.email_close()
      estimates.save_close()
      estimates.top_datesent()

      expect(estimates.top_datesent.text).to eql(dateonly)
    end

    it "Makes top estimate record inactive using grid actions menu" do
      estimates.refresh_grid()
      topestimate = estimates.top_refnumber.text
      estimates.top_actions()
      estimates.actions_makeinactive()

      expect(estimates.top_refnumber.text).not_to eql(topestimate)
    end

  end
