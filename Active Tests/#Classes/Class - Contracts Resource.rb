class ContractsResource

  #CSS Selectors: Grid
  CONTRACTS_OPTN = {css: "a[id$='Sidebar_Contracts']"}
  CREATE_CONTRACT_BTN = {css: "a[id$='AddContractLink'"}
  TOP_CONTRACT_NAME = {xpath: "/html/body/form/div[3]/div[3]/div[1]/div[2]/div[1]/div[3]/span/table/tbody/tr[1]/td[3]"}
  TOP_REFNUMBER = {css: "a[id$='ContractTable_ctl03_wtContractIdLink']"}
    TOP_CONTRACT_ACTIONS = {xpath: "/html/body/form/div[3]/div[3]/div[1]/div[2]/div[1]/div[3]/span/table/tbody/tr[1]/td[1]/div/div/div[1]/div[1]/span"}
      ACTIONS_DUPLICATE = {css: "a[id$='DuplicateContractLink']"}
      ACTIONS_CREATEACTIVITY = {css: "a[id$='CreateActivityLink']"}
      ACTIONS_CREATEJOB = {css: "a[id$='CreateJobLink']"}
      ACTIONS_DOCUMENTS = {css: "a[id$='DocumentsLink']"}
  SEARCH_FIELD = {css: "input[id$='SearchInput']"}
  SEARCH_BTN = {css: "input[value='Search']"}
  RESET_BTN = {css: "input[value='Reset']"}
  GRID_OPTIONS_DROPDOWN = {xpath: "/html/body/form/div[3]/div[3]/div[1]/div[2]/div[1]/div[2]/div[2]/div[2]/div/div[1]/span"}
    EXPORT_CONTRACTS = {css: "a[id$='ExportGridLink']"}
    SHOW_INACTIVES = {css: "input[id$='ShowInactivesCheckbox']"}
  GRID_TOTAL = {class: "Counter_Message"}
  ID_COLUMN = {css: "input[id$='ContractTable_ctl02_wt278']"} #Needs proper CSS
  NAME_COLUMN = {css: "input[id$='ContractTable_ctl02_wt339']"} #Needs proper CSS

  #CSS Selectors: Popup
  NAME_FIELD = {css: "input[id$='Contract_SubmittedName']"}
  LOCATION_DROPDOWN = {css: "select[id$='LocationCombobox']"}
  INSTALLMENT_AMOUNT_FIELD = {css: "input[id$='Contract_InstallmentAmount']"}
  CUSTOMER_FIELD = {css: "input[id$='CustomerInput']"}
  DETAILS_TEXTAREA = {css: "textarea[id$='Contract_Description']"} #Needs proper CSS
  COVERAGES_TEXTAREA = {css: "textarea[id$='Contract_Description2']"} #Needs proper CSS
  SPECIAL_INSTRUCTIONS_TEXTAREA = {css: "textarea[id$='Contract_Description3']"} #Needs proper CSS
  START_DATE_FIELD = {css: "input[id$='Contract_DateStart']"}
  END_DATE_FIELD = {css: "input[id$='Contract_DateEnd']"}
  CLOSED_CHECKBOX = {css: "input[id$='Contract_IsClosed']"}
  ACCOUNT_EXECUTIVE_DROPDOWN = {css: "select[id$='Contract_AccountExecutive']"}
  CANCEL_BTN = {css: "input[value='Cancel']"}
  ACTIONS_BTN = {xpath: "/html/body/form/div[3]/div[1]/div[3]/div[3]/div/div/div[1]/div[2]/span"}
  SAVE_BTN = {css: "input[value='Save']"}
  SAVE_AND_CLOSE_BTN = {css: "input[value='Save and Close']"}

  #CSS Selectors: Popup (Customer Contacts Tab)
  CUSTOMER_CONTACTS_TAB = {css: "a[id$='block_a_0']"}
  #Use Contacts Class

  #CSS Selectors: Popup (Jobs Tab)
  JOBS_TAB = {css: "a[id$='block_a_1']"}
  SEARCH_JOB = {css: "input[id$='wtJobSearchInput']"}
  TOP_JOB_REFNUMBER = {css: "a[id$='wtJobTable_ctl03_wtJobIdLink']"}
  TOP_JOB_NAME = {xpath: "/html/body/form/div[3]/div[1]/div[2]/div[2]/div/div[3]/table/tbody/tr/td[2]"}
  CONTRACT_JOB_SEARCH_BTN = {css: "input[id$='wtMainContent_wt222']"} #Needs proper CSS
  CONTRACT_JOB_RESET_BTN = {css: "input[id$='wtMainContent_wt209']"} #Needs proper CSS

  #CSS Selectors: Popup (Activities Tab)
  ACTIVITIES_TAB = {css: "a[id$='block_a_2']"}
  SEARCH_ACTIVITY = {css: "input[id$='ActivitiesSearchInput']"}
  TOP_ACTIVITY = {css: "a[id$='ctl03_wtActivityIdLink']"}
  TOP_ACTIVITY_DESCRIPTION = {xpath: "/html/body/form/div[3]/div[1]/div[2]/div[3]/div/div[3]/table/tbody/tr/td[5]"}
  CONTRACT_ACTIVITY_SEARCH_BTN = {css: "input[id$='wtMainContent_wt179']"} #Needs proper CSS
  CONTRACT_ACTIVITY_RESET_BTN = {css: "input[id$='wtMainContent_wt244']"} #Needs proper CSS

  #CSS Selectors: Frame Anchors
  ACTIVITY_REASON_DROPDOWN = {css: "select[id$='ActivityReasonCombobox']"}
  JOB_NAME_FIELD = {css: "input[id$='Job_Name']"}
  DOCUMENTS_SHOWHIDE_UPLOADER = {xpath: "/html/body/form/div[3]/div[1]/div/div/div[1]/div[2]/a/span"}

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

  #CSS Methods: Grid
  def open_contracts()
    i = 0
    loopcount = 5
    loop do
      i += 1
      begin
      wait = Selenium::WebDriver::Wait.new(:timeout => 10)
      wait.until {@driver.find_element(CONTRACTS_OPTN).displayed?}
      rescue Selenium::WebDriver::Error::StaleElementReferenceError
        false
      end
      if @driver.find_element(CONTRACTS_OPTN).displayed? == true
        break
      end
      if i == loopcount
        raise StaleError
      end
    end
    contracts_button = @driver.find_element(CONTRACTS_OPTN)
    contracts_button.click
    wait2 = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait2.until {@driver.find_element(class: "Counter_Message").text != "0 records" }
  end

  def create_contract()
    i = 0
    loopcount = 5
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait.until {@driver.find_element(CREATE_CONTRACT_BTN).displayed?}
    create_contract_button = @driver.find_element(CREATE_CONTRACT_BTN)
    create_contract_button.click
    loop do
      i += 1
      @driver.switch_to.frame(0)
      begin
        wait2 = Selenium::WebDriver::Wait.new(:timeout => 2)
        wait2.until {@driver.find_element(NAME_FIELD).displayed?}
      rescue Selenium::WebDriver::Error::TimeOutError
        false
      end
      if
        begin
          @driver.find_element(NAME_FIELD).displayed? == true
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
    top_record = @driver.find_element(TOP_CONTRACT_NAME)
  end

  def top_refnumber()
    top_refnumber = @driver.find_element(TOP_REFNUMBER)
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
        wait2.until {@driver.find_element(NAME_FIELD).displayed?}
      rescue Selenium::WebDriver::Error::TimeOutError
        false
      end
      if
        begin
          @driver.find_element(NAME_FIELD).displayed? == true
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
    wait.until {@driver.find_element(TOP_CONTRACT_ACTIONS).displayed?}
    top_actions = @driver.find_element(TOP_CONTRACT_ACTIONS)
    top_actions.click
  end

  def actions_duplicate()
    i = 0
    loopcount = 5
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(ACTIONS_DUPLICATE).displayed?}
    top_duplicate = @driver.find_element(ACTIONS_DUPLICATE)
    top_duplicate.click
    loop do
      i += 1
      @driver.switch_to.frame(0)
      begin
        wait2 = Selenium::WebDriver::Wait.new(:timeout => 2)
        wait2.until {@driver.find_element(NAME_FIELD).displayed?}
      rescue Selenium::WebDriver::Error::TimeOutError
        false
      end
      if
        begin
          @driver.find_element(NAME_FIELD).displayed? == true
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

  def actions_createjob()
    i = 0
    loopcount = 5
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(ACTIONS_CREATEJOB).displayed?}
    top_createjob = @driver.find_element(ACTIONS_CREATEJOB)
    top_createjob.click
    loop do
      i += 1
      @driver.switch_to.frame(1)
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

  def gridactions_documents()
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

  def search_contract(searchname)
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(SEARCH_FIELD).displayed?}
    contract_search = @driver.find_element(SEARCH_FIELD)
    contract_search.send_keys(searchname)
    wait2 = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait2.until {@driver.find_element(SEARCH_BTN).displayed?}
    search_confirm = @driver.find_element(SEARCH_BTN)
    search_confirm.click
    wait3 = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait3.until {@driver.find_element(TOP_CUSTOMER).text.downcase.include?(searchname.downcase)}
  end

  def search_contractid(searchname)
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
    contract_search = @driver.find_element(ID_COLUMN)
    contract_search.send_keys(searchname)
    wait2 = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait2.until {@driver.find_element(TOP_REFNUMBER).text.include?(searchname)}
  end

  def search_contractid_field()
    field = @driver.find_element(ID_COLUMN)
  end

  def search_contractname(searchname)
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
    contract_search = @driver.find_element(NAME_COLUMN)
    contract_search.send_keys(searchname)
    wait2 = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait2.until {@driver.find_element(TOP_CONTRACT_NAME).text.downcase.include?(searchname.downcase)}
  end

  def search_contractname_field()
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

  def export_customers()
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(EXPORT_CONTRACTS).displayed?}
    export_customers = @driver.find_element(EXPORT_CONTRACTS)
    export_customers.click
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
    wait.until {@driver.find_element(class: "Counter_Message").text != "0 records"}
    contacts_records = @driver.find_element(class: "Counter_Message")
    contacts_count = contacts_records.text
    print "Contracts: \n"
    print "%s \n" % contacts_count
    print "Load Time: %s ms \n\n" % loadPerformance
  end

  #CSS Methods: Popup
  def name(contractname)
    contract_name = @driver.find_element(NAME_FIELD)
		contract_name.send_keys(contractname)
  end

  def location(locationselect)
    dropdown_list = @driver.find_element(LOCATION_DROPDOWN)
		options = dropdown_list.find_elements(tag_name: 'option')
		options.each {|option| option.click if option.text == (locationselect)}
  end

  def installment_amount(installmentamount)
    input_field = @driver.find_element(INSTALLMENT_AMOUNT_FIELD)
    input_field.send_keys(installmentamount)
  end

  def customer(customername)
    input_field = @driver.find_element(CUSTOMER_FIELD)
    input_field.send_keys(customername)
  end

  def details(detailstext)
    textarea = @driver.find_element(DETAILS_TEXTAREA)
    textarea.send_keys(detailstext)
  end

  def coverages(coveragestext)
    textarea = @driver.find_element(COVERAGES_TEXTAREA)
    textarea.send_keys(coveragestext)
  end

  def special_instructions(specialinstructionstext)
    textarea = @driver.find_element(SPECIAL_INSTRUCTIONS_TEXTAREA)
    textarea.send_keys(specialinstructionstext)
  end

  def start_date(startdate)
    input_field = @driver.find_element(START_DATE_FIELD)
    input_field.send_keys(startdate)
  end

  def end_date(enddate)
    input_field = @driver.find_element(END_DATE_FIELD)
    input_field.send_keys(enddate)
  end

  def closed()
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(CLOSED_CHECKBOX).displayed?}
    checkbox = @driver.find_element(CLOSED_CHECKBOX)
    checkbox.click
  end

  def account_executive(accountexecutive)
    dropdown_list = @driver.find_element(ACCOUNT_EXECUTIVE_DROPDOWN)
    options = dropdown_list.find_elements(tag_name: 'option')
    options.each {|option| option.click if option.text == (accountexecutive)}
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
    wait.until {@driver.find_element(SAVE_BTN).enabled?}
    save = @driver.find_element(SAVE_BTN)
    save.click
  end

  def save_close()
    def wait_for()
      Selenium::WebDriver::Wait.new(:timeout => 5).until {yield}
    end
    wait_for {@driver.find_element(SAVE_AND_CLOSE_BTN).enabled?}
    save_and_close = @driver.find_element(SAVE_AND_CLOSE_BTN)
    save_and_close.click
    wait2 = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait2.until {@driver.find_element(TOP_REFNUMBER).displayed?}
  end

  #CSS Methods: Popup (Customer Contacts Tab)
  def contacts_tab()
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(CUSTOMER_CONTACTS_TAB).displayed?}
    contacts_tab = @driver.find_element(CUSTOMER_CONTACTS_TAB)
    contacts_tab.click
  end
  #Use Class - Contacts Resource from here

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
    wait2.until {@driver.find_element(CONTRACT_JOB_SEARCH_BTN).displayed?}
    search_confirm = @driver.find_element(CONTRACT_JOB_SEARCH_BTN)
    search_confirm.click
    wait3 = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait3.until {@driver.find_element(TOP_JOB_NAME).downcase.include?(searchjob.downcase)}
  end

  def top_job()
    i = 0
    loopcount = 5
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(TOP_JOB_REFNUMBER).displayed?}
    top_refnumber = @driver.find_element(TOP_JOB_REFNUMBER)
    top_refnumber.click
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

  def top_jobname()
    top_jobname = @driver.find_element(TOP_JOB_NAME)
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
    activity_search.send_keys(searchactivity)
    wait2 = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait2.until {@driver.find_element(CONTRACT_ACTIVITY_SEARCH_BTN).displayed?}
    search_confirm = @driver.find_element(CONTRACT_ACTIVITY_SEARCH_BTN)
    search_confirm.click
    wait3 = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait3.until {@driver.find_element(TOP_ACTIVITY_DESCRIPTION).downcase.include?(searchactivity.downcase)}
  end

  def top_activity()
    i = 0
    loopcount = 5
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(TOP_ACTIVITY).displayed?}
    top_refnumber = @driver.find_element(TOP_ACTIVITY)
    top_refnumber.click
    loop do
      i += 1
      @driver.switch_to.frame(0)
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

  def top_activitydescription()
    top_activitydescription = @driver.find_element(TOP_ACTIVITY_DESCRIPTION)
  end

end
