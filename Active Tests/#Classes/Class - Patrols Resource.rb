class PatrolsResource

  #CSS Selectors: Grid
  PATROLS_OPTN = {css: "a[id$='Sidebar_Patrols']"}
  CREATE_PATROL_BTN = {css: "a[id$='AddPatrolLink'"}
  TOP_PATROL = {xpath: "/html/body/form/div[3]/div[3]/div[1]/div[2]/div[1]/div[3]/span/table/tbody/tr[1]/td[3]"}
  TOP_PATROL_CUSTOMER = {css: "a[id$='wtPatrolTable_ctl03_wtCustomerDisplayNameLink']"}
    TOP_PATROL_ACTIONS = {xpath: "/html/body/form/div[3]/div[3]/div[1]/div[2]/div[1]/div[3]/span/table/tbody/tr[1]/td[1]/div/div/div[1]/div[1]/span"}
      ACTIONS_VIEWPATROL = {css: "a[id$='PatrolViewLink']"}
      ACTIONS_CREATEACTIVITY = {css: "a[id$='CreateActivityLink']"}
      ACTIONS_CREATEESTIMATE = {css: "a[id$='CreateEstimateLink']"}
      ACTIONS_CREATEJOB = {css: "a[id$='CreateJobLink']"}
      ACTIONS_DOCUMENTS = {css: "a[id$='DocumentsLink']"}
      ACTIONS_PRINTEMAIL = {css: "a[id$='PrintEmailLink']"}
      ACTIONS_MAKEINACTIVE = {css: "a[id$='MakeInactiveLink']"}
  TOP_REFNUMBER = {css: "a[id$='wtPatrolTable_ctl03_wtPatrolIdLink']"}
  SEARCH_FIELD = {css: "input[id$='SearchInput']"}
  SEARCH_BTN = {css: "input[value='Search']"}
  RESET_BTN = {css: "input[value='Reset']"}
  GRID_OPTIONS_DROPDOWN = {xpath: "/html/body/form/div[3]/div[3]/div[1]/div[2]/div[1]/div[2]/div[2]/div[2]/div/div[1]/span"}
    EXPORT_PATROLS = {css: "a[id$='ExportGridLink']"}
    SHOW_INACTIVES = {css: "input[id$='ShowInactivesCheckbox']"}
  GRID_TOTAL = {class: "Counter_Message"}
  ID_COLUMN = {css: "input[id$='wtIdSearchTextInput']"}
  NAME_COLUMN = {css: "input[id$='wtSubmittedNameSearchTextInput']"}

  #CSS Selectors: Popup
  SUBMITTED_NAME_FIELD = {css: "input[id$='Patrol_SubmittedName'"}
  LOCATION_DROPDOWN = {css: "select[id$='LocationCombobox']"}
  SERVICE_NEEDED_FIELD = {css: "textarea[id$='Patrol_Description']"}
  ACCOUNT_EXECUTIVE_DROPDOWN = {css: "select[id$='Patrol_AccountExecutive']"}
  BAD_PATROL_TYPE_DROPDOWN = {css: "select[id$='BadPatrolTypeCombobox']"}
  DATE_COMPLETED_FIELD = {css: "input[id$='Patrol_SubmittedName'"}
  CUSTOMER_FIELD = {css: "input[id$=CustomerInput]"}
  VIEW_CUSTOMER_LINK = {css: "a[id$='ViewCustomerLink']"}
  CANCEL_BTN = {css: "input[value='Cancel']"}
  ACTIONS_BTN = {xpath: "/html/body/form/div[3]/div[1]/div[5]/div[3]/div/div/div[1]/div[2]/span"}
  SAVE_BTN = {css: "input[value='Save']"}
  SAVE_AND_CLOSE_BTN = {css: "input[value='Save and Close']"}

  #CSS Selectors: Popup (Contact Info Tab)
  CONTACT_INFO_TAB = {css: "a[id$='block_a_0']"}
  NAME_FIELD = {css: "input[id$='Patrol_BillName']"}
  STREET_FIELD = {css: "textarea[id$='Patrol_SiteAddress']"}
  CITY_TOWN_FIELD = {css: "input[id$='Patrol_SiteCity']"}
  STATE_FIELD = {css: "input[id$='Patrol_SiteState']"}
  POSTAL_CODE_FIELD = {css: "input[id$='Patrol_SitePostalCode']"}
  COUNTRY_FIELD = {css: "input[id$='Patrol_SiteCountry']"}
  UNLINKED_CONTACT_NAME = {css: "input[id$='wtMainContent_wtContactNameInput']"}
  UNLINKED_CONTACT_PHONE = {css: "input[id$='wtMainContent_wtContactPhone']"}
  UNLINKED_CONTACT_EMAIL = {css: "input[id$='wtMainContent_wtContactEmailInput']"}
  #Use Contacts Class

  #CSS Selectors: Popup (Activities Tab)
  ACTIVITIES_TAB = {css: "a[id$='block_a_1']"}
  SEARCH_ACTIVITY = {css: "input[id$='ActivitiesSearchInput']"}
  TOP_ACTIVITY_DESCRIPTION = {xpath: "/html/body/form/div[3]/div[1]/div[4]/div[2]/div/div[3]/table/tbody/tr[1]/td[5]"}
  PATROL_ACTIVITY_SEARCH_BTN = {css: "input[id$='PatrolSearchActivities']"}
  PATROL_ACTIVITY_RESET_BTN = {css: "input[id$='PatrolResetActivities']"}

  #CSS Selectors: Popup (Estimates Tab)
  ESTIMATES_TAB = {css: "a[id$='block_a_2']"}
  SEARCH_ESTIMATE = {css: "input[id$='EstimateSearchInput']"}
  PATROL_ESTIMATE_SEARCH_BTN = {css: "input[id$='PatrolSearchEstimates']"}
  PATROL_ESTIMATE_RESET_BTN = {css: "input[id$='PatrolResetEstimates']"}

  #CSS Selectors: Popup (Jobs Tab)
  JOBS_TAB = {css: "a[id$='block_a_3']"}
  SEARCH_JOB = {css: "input[id$='JobSearchInput']"}
  PATROL_JOB_SEARCH_BTN = {css: "input[id$='PatrolSearchJobs']"}
  PATROL_JOB_RESET_BTN = {css: "input[id$='PatrolResetJobs']"}

  #CSS Selectors: Frame Anchors
  FRAME = {css: "iframe[tabindex='0']"}
  ACTIVITY_REASON_DROPDOWN = {css: "select[id$='ActivityReasonCombobox']"}
  ESTIMATE_NAME_FIELD = {css: "input[id$='Estimate_Name']"}
  JOB_NAME_FIELD = {css: "input[id$='Job_Name']"}
  DOCUMENTS_SHOWHIDE_UPLOADER = {xpath: "/html/body/form/div[3]/div[1]/div/div/div[1]/div[2]/a/span"}
  PRINTEMAIL_PDF_CHECKBOX = {css: "input[id$='AttachPDFInput']"}

  #Custom Errors
  class FrameError < StandardError
    def initialize(msg='Unable to switch to frame and locate element')
      super
    end
  end

  class StaleError < StandardError
    def initialize(msg='Stale reference error')
      super
    end
  end

  attr_reader :driver

  def initialize(driver)
    @driver = driver
  end

  #Class Methods: Grid
  def open_patrols()
    i = 0
    loopcount = 5
    loop do
      i += 1
      begin
      wait = Selenium::WebDriver::Wait.new(:timeout => 10)
      wait.until {@driver.find_element(PATROLS_OPTN).displayed?}
      rescue Selenium::WebDriver::Error::StaleElementReferenceError
        false
      end
      if @driver.find_element(PATROLS_OPTN).displayed? == true
        break
      end
      if i == loopcount
        raise StaleError
      end
    end
    patrols_button = @driver.find_element(PATROLS_OPTN)
    patrols_button.click
    wait2 = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait2.until {driver.find_element(class: "Counter_Message").text != "0 records"}
  end

  def create_patrol()
    i = 0
    loopcount = 5
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(CREATE_PATROL_BTN)}
    create_patrol_button = @driver.find_element(CREATE_PATROL_BTN)
    create_patrol_button.click
    wait2 = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait2.until {@driver.find_element(id:"WebForm1").displayed?}
    loop do
      i += 1
      @driver.switch_to.frame(0)
      begin
        wait3 = Selenium::WebDriver::Wait.new(:timeout => 2)
        wait3.until {@driver.find_element(CUSTOMER_FIELD).displayed?}
      rescue Selenium::WebDriver::Error::TimeOutError
        false
      end
      if
        begin
          @driver.find_element(CUSTOMER_FIELD).displayed? == true
        rescue Selenium::WebDriver::Error::NoSuchElementError
          false
        end
        break
      end
      if i == loopcount
        raise FrameError
      end
    end
  end

  def top()
    top_record = @driver.find_element(TOP_PATROL)
  end

  def top_refnumber()
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(TOP_REFNUMBER).displayed?}
    top_refnumber = @driver.find_element(TOP_REFNUMBER)
  end

  def top_customer()
    top_customer = @driver.find_element(TOP_PATROL_CUSTOMER)
  end

  def top_open()
    i = 0
    loopcount = 5
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(TOP_REFNUMBER).displayed?}
    top_refnumber = @driver.find_element(TOP_REFNUMBER)
    top_refnumber.click
    loop do
      i += 1
      @driver.switch_to.frame(0)
      begin
        wait2 = Selenium::WebDriver::Wait.new(:timeout => 2)
        wait2.until {@driver.find_element(CUSTOMER_FIELD).displayed?}
      rescue Selenium::WebDriver::Error::TimeOutError
        false
      end
      if
        begin
          @driver.find_element(CUSTOMER_FIELD).displayed? == true
        rescue Selenium::WebDriver::Error::NoSuchElementError
          false
        end
        break
      end
      if i == loopcount
        raise FrameError
      end
    end
  end

  def top_actions()
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(TOP_PATROL_ACTIONS).displayed?}
    top_actions = @driver.find_element(TOP_PATROL_ACTIONS)
    top_actions.click
  end

  def actions_createactivity()
    i = 0
    loopcount = 5
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(ACTIONS_CREATEACTIVITY).displayed?}
    top_createactivity = @driver.find_element(ACTIONS_CREATEACTIVITY)
    top_createactivity.click
    loop do
      i += 1
      @driver.switch_to.frame(1)
      begin
        wait2 = Selenium::WebDriver::Wait.new(:timeout => 2)
        wait2.until {@driver.find_element(ACTIVITY_REASON_DROPDOWN).displayed?}
      rescue Selenium::WebDriver::Error::TimeOutError
        false
      end
      if
        begin
          @driver.find_element(ACTIVITY_REASON_DROPDOWN).displayed? == true
        rescue Selenium::WebDriver::Error::NoSuchElementError
          false
        end
        break
      end
      if i == loopcount
        raise FrameError
      end
    end
  end

  def actions_createestimate()
    i = 0
    loopcount = 5
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(ACTIONS_CREATEESTIMATE).displayed?}
    top_createestimate = @driver.find_element(ACTIONS_CREATEESTIMATE)
    top_createestimate.click
    loop do
      i += 1
      @driver.switch_to.frame(0)
      begin
        wait2 = Selenium::WebDriver::Wait.new(:timeout => 2)
        wait2.until {@driver.find_element(ESTIMATE_NAME_FIELD).displayed?}
      rescue Selenium::WebDriver::Error::TimeOutError
        false
      end
      if
        begin
          @driver.find_element(ESTIMATE_NAME_FIELD).displayed? == true
        rescue Selenium::WebDriver::Error::NoSuchElementError
          false
        end
        break
      end
      if i == loopcount
        raise FrameError
      end
    end
  end

  def actions_createjob()
    i = 0
    loopcount = 5
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(ACTIONS_CREATEJOB).displayed?}
    top_createjob = @driver.find_element(ACTIONS_CREATEJOB)
    top_createjob.click
    loop do
      i += 1
      @driver.switch_to.frame(0)
      begin
        wait2 = Selenium::WebDriver::Wait.new(:timeout => 2)
        wait2.until {@driver.find_element(JOB_NAME_FIELD).displayed?}
      rescue Selenium::WebDriver::Error::TimeOutError
        false
      end
      if
        begin
          @driver.find_element(JOB_NAME_FIELD).displayed? == true
        rescue Selenium::WebDriver::Error::NoSuchElementError
          false
        end
        break
      end
      if i == loopcount
        raise FrameError
      end
    end
  end

  def actions_documents()
    #Only available in grid actions
    i = 0
    loopcount = 5
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(ACTIONS_DOCUMENTS).displayed?}
    top_documents = @driver.find_element(ACTIONS_DOCUMENTS)
    top_documents.click
    loop do
      i += 1
      @driver.switch_to.frame(0)
      begin
        wait2 = Selenium::WebDriver::Wait.new(:timeout => 2)
        wait2.until {@driver.find_element(DOCUMENTS_SHOWHIDE_UPLOADER).displayed?}
      rescue Selenium::WebDriver::Error::TimeOutError
        false
      end
      if
        begin
          @driver.find_element(DOCUMENTS_SHOWHIDE_UPLOADER).displayed? == true
        rescue Selenium::WebDriver::Error::NoSuchElementError
          false
        end
        break
      end
      if i == loopcount
        raise FrameError
      end
    end
  end

  def actions_printemail()
    i = 0
    loopcount = 5
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(ACTIONS_PRINTEMAIL).displayed?}
    top_printemail = @driver.find_element(ACTIONS_PRINTEMAIL)
    top_printemail.click
    loop do
      i += 1
      @driver.switch_to.frame(1)
      begin
        wait2 = Selenium::WebDriver::Wait.new(:timeout => 2)
        wait2.until {@driver.find_element(PRINTEMAIL_PDF_CHECKBOX).displayed?}
      rescue Selenium::WebDriver::Error::TimeOutError
        false
      end
      if
        begin
          @driver.find_element(PRINTEMAIL_PDF_CHECKBOX).displayed? == true
        rescue Selenium::WebDriver::Error::NoSuchElementError
          false
        end
        break
      end
      if i == loopcount
        raise FrameError
      end
    end
  end

  def actions_makeinactive()
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(ACTIONS_MAKEINACTIVE).displayed?}
    top_makeinactive = @driver.find_element(ACTIONS_MAKEINACTIVE)
    top_makeinactive.click
  end

  def search_patrol(searchname)
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(SEARCH_FIELD).displayed?}
    patrol_search = @driver.find_element(SEARCH_FIELD)
    patrol_search.send_keys(searchname)
    wait2 = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait2.until {@driver.find_element(SEARCH_BTN).displayed?}
    search_confirm = @driver.find_element(SEARCH_BTN)
    search_confirm.click
    wait3 = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait3.until {(@driver.find_element(TOP_PATROL).text.downcase + @driver.find_element(TOP_PATROL_CUSTOMER).text.downcase).include?(searchname)}
  end

  def search_patrolid(searchname)
    i = 0
    loopcount = 5
    loop do
      wait = Selenium::WebDriver::Wait.new(:timeout => 5)
      if
        begin
          wait.until {@driver.find_element(ID_COLUMN).displayed?} == true
        rescue Selenium::WebDriver::Error::StaleElementReferenceError
            false
        end
        break
        if i == loopcount
          raise StaleError
        end
      end
    end
    patrol_search = @driver.find_element(ID_COLUMN)
    patrol_search.send_keys(searchname)
    wait2 = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait2.until {@driver.find_element(TOP_REFNUMBER).text.include?(searchname)}
  end

  def search_patrolid_field()
    field = @driver.find_element(ID_COLUMN)
  end

  def search_patrolname(searchname)
    i = 0
    loopcount = 5
    loop do
      wait = Selenium::WebDriver::Wait.new(:timeout => 5)
      if
        begin
          wait.until {@driver.find_element(NAME_COLUMN).displayed?} == true
        rescue Selenium::WebDriver::Error::StaleElementReferenceError
          false
        end
        break
        if i == loopcount
          raise StaleError
        end
      end
    end
    patrol_search = @driver.find_element(NAME_COLUMN)
    patrol_search.send_keys(searchname)
    wait2 = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait2.until {@driver.find_element(TOP_PATROL).text.downcase.include?(searchname)}
  end

  def search_patrolname_field()
    field = @driver.find_element(NAME_COLUMN)
  end

  def search_reset()
    currentrecords = @driver.find_element(class: "Counter_Message").text
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(RESET_BTN).displayed?}
    search_reset = @driver.find_element(RESET_BTN)
    search_reset.click
    wait2 = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait2.until {@driver.find_element(class: "Counter_Message").text != currentrecords}
  end

  def grid_options()
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(GRID_OPTIONS_DROPDOWN).displayed?}
    grid_options = @driver.find_element(GRID_OPTIONS_DROPDOWN)
    grid_options.click
  end

  def export_patrols()
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(EXPORT_PATROLS).displayed?}
    export_patrols = @driver.find_element(EXPORT_PATROLS)
    export_patrols.click
  end

  def show_inactives()
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(SHOW_INACTIVES).displayed?}
    show_inactives = @driver.find_element(SHOW_INACTIVES)
    show_inactives.click
  end

  def grid_total()
    gridtotal = @driver.find_element(GRID_TOTAL)
  end

  def resource_performance()
    navigationStart = @driver.execute_script("return window.performance.timing.navigationStart")
    responseStart = @driver.execute_script("return window.performance.timing.responseStart")
    domComplete = @driver.execute_script("return window.performance.timing.domComplete")
    loadPerformance = domComplete - navigationStart
    wait = Selenium::WebDriver::Wait.new(:timeout => 20)
    wait.until {@driver.find_element(GRID_TOTAL).text != "0 records"}
    patrols_records = @driver.find_element(GRID_TOTAL)
    patrols_count = patrols_records.text
    print "Patrols: \n"
    print "%s \n" % patrols_count
    print "Load Time: %s ms \n\n" % loadPerformance
  end

  #CSS Methods: Popup
  def submitted_name(submittedname)
    submitted_name = @driver.find_element(SUBMITTED_NAME_FIELD)
		submitted_name.send_keys(submittedname)
  end

  def location(locationselect)
    dropdown_list = @driver.find_element(LOCATION_DROPDOWN)
		options = dropdown_list.find_elements(tag_name: 'option')
		options.each {|option| option.click if option.text == (locationselect)}
  end

  def service_needed(serviceneeded)
    service_needed = @driver.find_element(SERVICE_NEEDED_FIELD)
		service_needed.send_keys(serviceneeded)
  end

  def account_executive(accountexecutive)
    dropdown_list = @driver.find_element(ACCOUNT_EXECUTIVE_DROPDOWN)
    options = dropdown_list.find_elements(tag_name: 'option')
    options.each {|option| option.click if option.text == (accountexecutive)}
  end

  def bad_patrol_type(badpatroltype)
    dropdown_list = @driver.find_element(BAD_PATROL_TYPE_DROPDOWN)
    options = dropdown_list.find_elements(tag_name: 'option')
    options.each {|option| option.click if option.text == (badpatroltype)}
  end

  def date_completed(datecompleted)
    date_completed = @driver.find_element(DATE_COMPLETED_FIELD)
    date_completed.send_keys(datecompleted)
  end

  def customer(customer)
    customer_enter = @driver.find_element(CUSTOMER_FIELD)
    customer_enter.send_keys(customer)
    sleep(1)
		@driver.action.send_keys(:enter).perform
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(VIEW_CUSTOMER_LINK).displayed?}
  end

  def cancel()
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(CANCEL_BTN).displayed?}
    cancel_popup = @driver.find_element(CANCEL_BTN)
    cancel_popup.click
    wait2 = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait2.until {@driver.find_element(TOP_REFNUMBER).displayed?}
  end

  def actions()
    #Use actions_(action) methods from here
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(ACTIONS_BTN).displayed?}
    actions_popup = @driver.find_element(ACTIONS_BTN)
    actions_popup.click
  end

  def save()
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(SAVE_BTN).displayed?}
    save = @driver.find_element(SAVE_BTN)
    save.click
  end

  def save_close()
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(SAVE_AND_CLOSE_BTN).displayed?}
    save_and_close = @driver.find_element(SAVE_AND_CLOSE_BTN)
    save_and_close.click
    wait2 = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait2.until {@driver.find_element(TOP_REFNUMBER).displayed?}
  end

  #CSS Methods: Popup (Contact Info Tab)
  def contact_info_tab()
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(CONTACT_INFO_TAB).displayed?}
    contact_info_tab = @driver.find_element(CONTACT_INFO_TAB)
    contact_info_tab.click
  end

  def site_name(sitename)
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(NAME_FIELD).displayed?}
    sitename_field = @driver.find_element(NAME_FIELD)
    sitename_field.send_keys(sitename)
  end

  def site_street(sitestreet)
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(STREET_FIELD).displayed?}
    sitestreet_field = @driver.find_element(STREET_FIELD)
    sitestreet_field.send_keys(sitestreet)
  end

  def site_state(sitestate)
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(STATE_FIELD).displayed?}
    sitestate_field = @driver.find_element(STATE_FIELD)
    sitestate_field.send_keys(sitestate)
  end

  def site_zip(sitezip)
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(POSTAL_CODE_FIELD).displayed?}
    sitezip_field = @driver.find_element(POSTAL_CODE_FIELD)
    sitezip_field.send_keys(sitezip)
  end

  def site_country(sitecountry)
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(COUNTRY_FIELD).displayed?}
    sitecountry_field = @driver.find_element(COUNTRY_FIELD)
    sitecountry_field.send_keys(sitecountry)
  end

  #If Customer is not linked (Otherwise use Class - Contacts Resource)
  def unlinked_contact_name(unlinkedcontactname)
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(UNLINKED_CONTACT_NAME).displayed?}
    inputfield = @driver.find_element(UNLINKED_CONTACT_NAME)
    inputfield.send_keys(unlinkedcontactname)
  end

  def unlinked_contact_phone(unlinkedcontactphone)
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(UNLINKED_CONTACT_PHONE).displayed?}
    inputfield = @driver.find_element(UNLINKED_CONTACT_PHONE)
    inputfield.send_keys(unlinkedcontactphone)
  end

  def unlinked_contact_email(unlinkedcontactemail)
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(UNLINKED_CONTACT_EMAIL).displayed?}
    inputfield = @driver.find_element(UNLINKED_CONTACT_EMAIL)
    inputfield.send_keys(unlinkedcontactemail)
  end

  #CSS Methods: Popup (Activities Tab)
  def activities_tab()
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(ACTIVITIES_TAB).displayed?}
    activities_tab = @driver.find_element(ACTIVITIES_TAB)
    activities_tab.click
  end

  def search_activity(searchactivity)
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(SEARCH_ACTIVITY).displayed?}
    activity_search = @driver.find_element(SEARCH_ACTIVITY)
    activity_search.send_keys(searchname)
    wait2 = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait2.until {@driver.find_element(PATROL_ACTIVITY_SEARCH_BTN).displayed?}
    search_confirm = @driver.find_element(PATROL_ACTIVITY_SEARCH_BTN)
    search_confirm.click
    wait3 = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait3.until {@driver.find_element(TOP_ACTIVITY_DESCRIPTION).downcase.include?(searchactivity.downcase)}
  end

  def top_activitydescription()
    top_activitydescription = @driver.find_element(TOP_ACTIVITY_DESCRIPTION)
  end

  #CSS Methods: Popup (Estimates Tab)
  def estimates_tab()
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(ESTIMATES_TAB).displayed?}
    estimates_tab = @driver.find_element(ESTIMATES_TAB)
    estimates_tab.click
  end

  def search_estimate(searchestimate)
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(SEARCH_ESTIMATE).displayed?}
    estimate_search = @driver.find_element(SEARCH_ESTIMATE)
    estimate_search.send_keys(searchestimate)
    wait2 = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait2.until {@driver.find_element(PATROL_ESTIMATE_SEARCH_BTN).displayed?}
    search_confirm = @driver.find_element(PATROL_ESTIMATE_SEARCH_BTN)
    search_confirm.click
  end

  #CSS Methods: Popup (Jobs Tab)
  def jobs_tab()
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(JOBS_TAB).displayed?}
    jobs_tab = @driver.find_element(JOBS_TAB)
    jobs_tab.click
  end

  def search_job(searchjob)
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(SEARCH_JOB).displayed?}
    job_search = @driver.find_element(SEARCH_JOB)
    job_search.send_keys(searchjob)
    wait2 = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait2.until {@driver.find_element(PATROL_JOB_SEARCH_BTN).displayed?}
    search_confirm = @driver.find_element(PATROL_JOB_SEARCH_BTN)
    search_confirm.click
  end

end
