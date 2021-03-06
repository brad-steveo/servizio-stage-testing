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
  #SEARCH_BTN
  #RESET_BTN

  #CSS Selectors: Popup (Estimates Tab)
  ESTIMATES_TAB = {css: "a[id$='block_a_2']"}
  SEARCH_ESTIMATE = {css: "input[id$='EstimateSearchInput']"}
  #SEARCH_BTN
  #RESET_BTN

  #CSS Selectors: Popup (Jobs Tab)
  JOBS_TAB = {css: "a[id$='block_a_3']"}
  SEARCH_JOB = {css: "input[id$='JobSearchInput']"}
  #SEARCH_BTN
  #RESET_BTN

  attr_reader :driver

  def initialize(driver)
    @driver = driver
  end

  #Class Methods: Grid
  def open_patrols()
    def wait_for()
      Selenium::WebDriver::Wait.new(:timeout => 5).until {yield}
    end
    wait_for {@driver.find_element(PATROLS_OPTN).displayed?}
    patrols_button = @driver.find_element(PATROLS_OPTN)
    patrols_button.click
    def wait_for2()
      Selenium::WebDriver::Wait.new(:timeout => 5).until {yield}
    end
      wait_for2 {driver.find_element(class: "Counter_Message").text != "0 records"}
  end

  def create_patrol()
    def wait_for()
      Selenium::WebDriver::Wait.new(:timeout => 5).until {yield}
    end
    wait_for {@driver.find_element(CREATE_PATROL_BTN).displayed?}
    create_patrol_button = @driver.find_element(CREATE_PATROL_BTN)
    create_patrol_button.click
    sleep(3)
    def wait_for2()
			Selenium::WebDriver::Wait.new(:timeout => 10).until { yield }
		end
		wait_for2 {@driver.find_element(id:"WebForm1").displayed?}
    sleep(2)
    @driver.switch_to.frame(0)
  end

  def top()
    top_record = @driver.find_element(TOP_PATROL)
  end

  def top_refnumber()
    top_refnumber = @driver.find_element(TOP_REFNUMBER)
  end

  def top_customer()
    top_customer = @driver.find_element(TOP_PATROL_CUSTOMER)
  end

  def top_open()
    def wait_for()
      Selenium::WebDriver::Wait.new(:timeout => 5).until {yield}
    end
    wait_for {@driver.find_element(TOP_REFNUMBER).displayed?}
    top_refnumber = @driver.find_element(TOP_REFNUMBER)
    top_refnumber.click
    sleep(2)
    @driver.switch_to.frame(0)
  end

  def top_actions()
    def wait_for()
      Selenium::WebDriver::Wait.new(:timeout => 5).until {yield}
    end
    wait_for {@driver.find_element(TOP_PATROL_ACTIONS).displayed?}
    top_actions = @driver.find_element(TOP_PATROL_ACTIONS)
    top_actions.click
  end

  def top_viewpatrol()
    #Only accessible in grid actions
    def wait_for()
      Selenium::WebDriver::Wait.new(:timeout => 5).until {yield}
    end
    wait_for {@driver.find_element(ACTIONS_VIEWPATROL).displayed?}
    top_viewpatrol = @driver.find_element(ACTIONS_VIEWPATROL)
    top_viewpatrol.click
    sleep(2)
    @driver.switch_to.frame(1)
  end

  def actions_createactivity()
    def wait_for()
      Selenium::WebDriver::Wait.new(:timeout => 5).until {yield}
    end
    wait_for {@driver.find_element(ACTIONS_CREATEACTIVITY).displayed?}
    top_createactivity = @driver.find_element(ACTIONS_CREATEACTIVITY)
    top_createactivity.click
    sleep(2)
    @driver.switch_to.frame(1)
  end

  def actions_createestimate()
    def wait_for()
      Selenium::WebDriver::Wait.new(:timeout => 5).until {yield}
    end
    wait_for {@driver.find_element(ACTIONS_CREATEESTIMATE).displayed?}
    top_createestimate = @driver.find_element(ACTIONS_CREATEESTIMATE)
    top_createestimate.click
    sleep(2)
    @driver.switch_to.frame(1)
  end

  def actions_createjob()
    def wait_for()
      Selenium::WebDriver::Wait.new(:timeout => 5).until {yield}
    end
    wait_for {@driver.find_element(TOP_PATROL_CREATEJOB).displayed?}
    top_createjob = @driver.find_element(TOP_PATROL_CREATEJOB)
    top_createjob.click
    sleep(2)
    @driver.switch_to.frame(1)
  end

  def actions_documents()
    def wait_for()
      Selenium::WebDriver::Wait.new(:timeout => 5).until {yield}
    end
    wait_for {@driver.find_element(ACTIONS_DOCUMENTS).displayed?}
    top_documents = @driver.find_element(ACTIONS_DOCUMENTS)
    top_documents.click
  end

  def actions_printemail()
    def wait_for()
      Selenium::WebDriver::Wait.new(:timeout => 5).until {yield}
    end
    wait_for {@driver.find_element(ACTIONS_PRINTEMAIL).displayed?}
    top_printemail = @driver.find_element(ACTIONS_PRINTEMAIL)
    top_printemail.click
    sleep(2)
    @driver.switch_to.frame(1)
  end

  def actions_makeinactive()
    def wait_for()
      Selenium::WebDriver::Wait.new(:timeout => 5).until {yield}
    end
    wait_for {@driver.find_element(ACTIONS_MAKEINACTIVE).displayed?}
    top_makeinactive = @driver.find_element(ACTIONS_MAKEINACTIVE)
    top_makeinactive.click
  end

  def search_patrol(searchname)
    def wait_for()
      Selenium::WebDriver::Wait.new(:timeout => 5).until {yield}
    end
    wait_for {@driver.find_element(SEARCH_FIELD).displayed?}
    patrol_search = @driver.find_element(SEARCH_FIELD)
    patrol_search.send_keys(searchname)
    def wait_for2()
      Selenium::WebDriver::Wait.new(:timeout => 5).until {yield}
    end
    wait_for2 {@driver.find_element(SEARCH_BTN).displayed?}
    search_confirm = @driver.find_element(SEARCH_BTN)
    search_confirm.click
    sleep(2)
  end

  def search_patrolid(searchname)
    def wait_for()
      Selenium::WebDriver::Wait.new(:timeout => 5).until {yield}
    end
    wait_for {@driver.find_element(ID_COLUMN).displayed?}
    patrol_search = @driver.find_element(ID_COLUMN)
    patrol_search.send_keys(searchname)
    sleep(3)
  end

  def search_patrolname(searchname)
    def wait_for()
      Selenium::WebDriver::Wait.new(:timeout => 5).until {yield}
    end
    wait_for {@driver.find_element(NAME_COLUMN).displayed?}
    patrol_search = @driver.find_element(NAME_COLUMN)
    patrol_search.send_keys(searchname)
    sleep(3)
  end

  def search_reset()
    def wait_for()
      Selenium::WebDriver::Wait.new(:timeout => 5).until {yield}
    end
    wait_for {@driver.find_element(RESET_BTN).displayed?}
    search_reset = @driver.find_element(RESET_BTN)
    search_reset.click
    sleep(2)
  end

  def grid_options()
    def wait_for()
      Selenium::WebDriver::Wait.new(:timeout => 5).until {yield}
    end
    wait_for {@driver.find_element(GRID_OPTIONS_DROPDOWN).displayed?}
    grid_options = @driver.find_element(GRID_OPTIONS_DROPDOWN)
    grid_options.click
  end

  def export_patrols()
    def wait_for()
      Selenium::WebDriver::Wait.new(:timeout => 5).until {yield}
    end
    wait_for {@driver.find_element(EXPORT_PATROLS).displayed?}
    export_patrols = @driver.find_element(EXPORT_PATROLS)
    export_patrols.click
  end

  def show_inactives()
    def wait_for()
      Selenium::WebDriver::Wait.new(:timeout => 5).until {yield}
    end
    wait_for {@driver.find_element(SHOW_INACTIVES).displayed?}
    show_inactives = @driver.find_element(SHOW_INACTIVES)
    show_inactives.click
  end

  def grid_total()
    gridtotal = @driver.find_element(GRID_TOTAL)
  end

  def resource_performance()
    navigationStart = driver.execute_script("return window.performance.timing.navigationStart")
    responseStart = driver.execute_script("return window.performance.timing.responseStart")
    domComplete = driver.execute_script("return window.performance.timing.domComplete")
    loadPerformance = domComplete - navigationStart
    def wait_for
      Selenium::WebDriver::Wait.new(:timeout => 20).until { yield }
    end
    wait_for {driver.find_element(GRID_TOTAL).text != "0 records" }
    patrols_records = driver.find_element(GRID_TOTAL)
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
  end

  def cancel()
    def wait_for()
      Selenium::WebDriver::Wait.new(:timeout => 5).until {yield}
    end
    wait_for {@driver.find_element(CANCEL_BTN).displayed?}
    cancel_popup = @driver.find_element(CANCEL_BTN)
    cancel_popup.click
  end

  def actions()
    #Use actions_(action) methods from here
    def wait_for()
      Selenium::WebDriver::Wait.new(:timeout => 5).until {yield}
    end
    wait_for {@driver.find_element(ACTIONS_BTN).displayed?}
    actions_popup = @driver.find_element(ACTIONS_BTN)
    actions_popup.click
  end

  def save()
    def wait_for()
      Selenium::WebDriver::Wait.new(:timeout => 5).until {yield}
    end
    wait_for {@driver.find_element(SAVE_BTN).displayed?}
    save = @driver.find_element(SAVE_BTN)
    save.click
  end

  def save_close()
    def wait_for()
      Selenium::WebDriver::Wait.new(:timeout => 5).until {yield}
    end
    wait_for {@driver.find_element(SAVE_AND_CLOSE_BTN).displayed?}
    save_and_close = @driver.find_element(SAVE_AND_CLOSE_BTN)
    save_and_close.click
    sleep(2)
  end

  #CSS Methods: Popup (Contact Info Tab)
  def contact_info_tab()
    def wait_for()
      Selenium::WebDriver::Wait.new(:timeout => 5).until {yield}
    end
    wait_for {@driver.find_element(CONTACT_INFO_TAB).displayed?}
    contact_info_tab = @driver.find_element(CONTACT_INFO_TAB)
    contact_info_tab.click
  end

  def site_name(sitename)
    def wait_for()
      Selenium::WebDriver::Wait.new(:timeout => 5).until {yield}
    end
    wait_for {@driver.find_element(NAME_FIELD).displayed?}
    sitename_field = @driver.find_element(NAME_FIELD)
    sitename_field.send_keys(sitename)
  end

  def site_street(sitestreet)
    def wait_for()
      Selenium::WebDriver::Wait.new(:timeout => 5).until {yield}
    end
    wait_for {@driver.find_element(STREET_FIELD).displayed?}
    sitestreet_field = @driver.find_element(STREET_FIELD)
    sitestreet_field.send_keys(sitestreet)
  end

  def site_state(sitestate)
    def wait_for()
      Selenium::WebDriver::Wait.new(:timeout => 5).until {yield}
    end
    wait_for {@driver.find_element(STATE_FIELD).displayed?}
    sitestate_field = @driver.find_element(STATE_FIELD)
    sitestate_field.send_keys(sitestate)
  end

  def site_zip(sitezip)
    def wait_for()
      Selenium::WebDriver::Wait.new(:timeout => 5).until {yield}
    end
    wait_for {@driver.find_element(POSTAL_CODE_FIELD).displayed?}
    sitezip_field = @driver.find_element(POSTAL_CODE_FIELD)
    sitezip_field.send_keys(sitezip)
  end

  def site_country(sitecountry)
    def wait_for()
      Selenium::WebDriver::Wait.new(:timeout => 5).until {yield}
    end
    wait_for {@driver.find_element(COUNTRY_FIELD).displayed?}
    sitecountry_field = @driver.find_element(COUNTRY_FIELD)
    sitecountry_field.send_keys(sitecountry)
  end

  #If Customer is not linked (Otherwise use Class - Contacts Resource)
  def unlinked_contact_name(unlinkedcontactname)
    def wait_for()
      Selenium::WebDriver::Wait.new(:timeout => 5).until {yield}
    end
    wait_for {@driver.find_element(UNLINKED_CONTACT_NAME).displayed?}
    inputfield = @driver.find_element(UNLINKED_CONTACT_NAME)
    inputfield.send_keys(unlinkedcontactname)
  end

  def unlinked_contact_phone(unlinkedcontactphone)
    def wait_for()
      Selenium::WebDriver::Wait.new(:timeout => 5).until {yield}
    end
    wait_for {@driver.find_element(UNLINKED_CONTACT_PHONE).displayed?}
    inputfield = @driver.find_element(UNLINKED_CONTACT_PHONE)
    inputfield.send_keys(unlinkedcontactphone)
  end

  def unlinked_contact_email(unlinkedcontactemail)
    def wait_for()
      Selenium::WebDriver::Wait.new(:timeout => 5).until {yield}
    end
    wait_for {@driver.find_element(UNLINKED_CONTACT_EMAIL).displayed?}
    inputfield = @driver.find_element(UNLINKED_CONTACT_EMAIL)
    inputfield.send_keys(unlinkedcontactemail)
  end

  #CSS Methods: Popup (Activities Tab)
  def activities_tab()
    def wait_for()
      Selenium::WebDriver::Wait.new(:timeout => 5).until {yield}
    end
    wait_for {@driver.find_element(ACTIVITIES_TAB).displayed?}
    activities_tab = @driver.find_element(ACTIVITIES_TAB)
    activities_tab.click
  end

  def search_activity(searchactivity)
    def wait_for()
      Selenium::WebDriver::Wait.new(:timeout => 5).until {yield}
    end
    wait_for {@driver.find_element(SEARCH_ACTIVITY).displayed?}
    activity_search = @driver.find_element(SEARCH_ACTIVITY)
    activity_search.send_keys(searchname)
    def wait_for2()
      Selenium::WebDriver::Wait.new(:timeout => 5).until {yield}
    end
    wait_for2 {@driver.find_element(SEARCH_BTN).displayed?}
    search_confirm = @driver.find_element(SEARCH_BTN)
    search_confirm.click
    sleep(1)
  end

  def top_activitydescription()
    top_activitydescription = @driver.find_element(TOP_ACTIVITY_DESCRIPTION)
  end

  #CSS Methods: Popup (Estimates Tab)
  def estimates_tab()
    def wait_for()
      Selenium::WebDriver::Wait.new(:timeout => 5).until {yield}
    end
    wait_for {@driver.find_element(ESTIMATES_TAB).displayed?}
    estimates_tab = @driver.find_element(ESTIMATES_TAB)
    estimates_tab.click
  end

  def search_estimate(searchestimate)
    def wait_for()
      Selenium::WebDriver::Wait.new(:timeout => 5).until {yield}
    end
    wait_for {@driver.find_element(SEARCH_ESTIMATE).displayed?}
    estimate_search = @driver.find_element(SEARCH_ESTIMATE)
    estimate_search.send_keys(searchestimate)
    def wait_for2()
      Selenium::WebDriver::Wait.new(:timeout => 5).until {yield}
    end
    wait_for2 {@driver.find_element(SEARCH_BTN).displayed?}
    search_confirm = @driver.find_element(SEARCH_BTN)
    search_confirm.click
    sleep(1)
  end

  #CSS Methods: Popup (Jobs Tab)
  def jobs_tab()
    def wait_for()
      Selenium::WebDriver::Wait.new(:timeout => 5).until {yield}
    end
    wait_for {@driver.find_element(JOBS_TAB).displayed?}
    jobs_tab = @driver.find_element(JOBS_TAB)
    jobs_tab.click
  end

  def search_job(searchjob)
    def wait_for()
      Selenium::WebDriver::Wait.new(:timeout => 5).until {yield}
    end
    wait_for {@driver.find_element(SEARCH_JOB).displayed?}
    job_search = @driver.find_element(SEARCH_JOB)
    job_search.send_keys(searchjob)
    def wait_for2()
      Selenium::WebDriver::Wait.new(:timeout => 5).until {yield}
    end
    wait_for2 {@driver.find_element(SEARCH_BTN).displayed?}
    search_confirm = @driver.find_element(SEARCH_BTN)
    search_confirm.click
    sleep(1)
  end

end
