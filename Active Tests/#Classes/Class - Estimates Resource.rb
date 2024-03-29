class EstimatesResource

  #CSS Selectors: Grid
  ESTIMATES_OPTN = {css: "a[id$='Sidebar_Estimates']"}
  CREATE_ESTIMATE_BTN = {css: "a[id$='AddEstimateLink'"}
  SELECT_CUSTOMER_BOX = {css: "span[id^='os-internal-ui-dialog-title']"}
  CUSTOMER_SEARCH_FIELD = {css: "input[id$=CustomerInput]"}
  CUSTOMER_NEXT_BTN = {css: "input[value='Next']"}
  CUSTOMER_CANCEL_BTN = {css: "input[value='Cancel']"}
  TOP_ESTIMATE = {xpath: "/html/body/form/div[3]/div[3]/div[1]/div[2]/div[1]/div[3]/span/table/tbody/tr[1]/td[3]"}
    TOP_ESTIMATE_ACTIONS = {xpath: "/html/body/form/div[3]/div[3]/div[1]/div[2]/div[1]/div[3]/span/table/tbody/tr[1]/td[1]/div/div/div[1]/div[1]/span"}
      ACTIONS_VIEWESTIMATE = {css: "a[id$='EstimateIdLink2']"}
      ACTIONS_CREATEACTIVITY = {css: "a[id$='CreateActivityLink']"}
      ACTIONS_CREATEJOB = {css: "a[id$='CreateJobLink']"}
      ACTIONS_DOCUMENTS = {css: "a[id$='DocumentsLink']"}
      ACTIONS_PRINTEMAIL = {css: "a[id$='PrintEmailLink']"}
      ACTIONS_DUPLICATEESTIMATE = {css: "a[id$='DuplicateEstimateLink']"}
      ACTIONS_MAKEINACTIVE = {css: "a[id$='MakeInactiveLink']"}
        PUSH_CONFIRM = {css: "a[class='conf-dialog-button blue']"}
  TOP_REFNUMBER = {css: "a[id$='EstimateTable_ctl03_wtEstimateIdLink']"}
  TOP_STATUS = {xpath: "/html/body/form/div[3]/div[3]/div[1]/div[2]/div[1]/div[3]/span/table/tbody/tr[1]/td[7]"}
  TOP_STAGE = {xpath: "/html/body/form/div[3]/div[3]/div[1]/div[2]/div[1]/div[3]/span/table/tbody/tr[1]/td[9]"}
  TOP_TYPE = {xpath: "/html/body/form/div[3]/div[3]/div[1]/div[2]/div[1]/div[3]/span/table/tbody/tr[1]/td[10]/div"}
  TOP_DATESENT = {css: "span[id$='wtEstimateTable_ctl03_wtDateSent']"}
  SEARCH_FIELD = {css: "input[id$='SearchInput']"}
  SEARCH_BTN = {css: "input[value='Search']"}
  RESET_BTN = {css: "input[value='Reset']"}
  GRID_OPTIONS_DROPDOWN = {xpath: "/html/body/form/div[3]/div[3]/div[1]/div[2]/div[1]/div[2]/div[2]/div/div/div[1]/div/span"}
    EXPORT_ESTIMATES = {css: "a[id$='ExportGridLink']"}
    SHOW_INACTIVES = {css: "input[id$='ShowInactivesCheckbox']"}
  GRID_TOTAL = {class: "Counter_Message"}
  ID_COLUMN = {css: "input[id$='wtIdSearchTextInput']"}
  NAME_COLUMN = {css: "input[id$='wtNameSearchTextInput']"}

  #CSS Selectors: Popup
  NAME_FIELD = {css: "input[id$='Estimate_Name']"}
  LOCATION_DROPDOWN = {css: "select[id$='LocationCombobox']"}
  TYPE_DROPDOWN = {css: "select[id$='EstimateTypeCombobox']"}
  STAGE_DROPDOWN = {css: "select[id$='EstimateStageCombobox']"}
  CUSTOMER_FIELD = {css: "input[id$='CustomerInput']"}
  PATROL_FIELD = {css: "input[id$='Patrollnput']"}
  EFFECTIVEON_FIELD = {css: "input[id$='Estimate_DateEffective']"}
  EXPIRESON_FIELD = {css: "input[id$='Estimate_DateExpires']"}
  ACCOUNT_EXECUTIVE_DROPDOWN = {css: "select[id$='AccountExecutive']"}
  NTE_FIELD = {css: "input[id$='NotToExceed']"}
  CANCEL_BTN = {css: "input[value='Cancel']"}
  ACTIONS_BTN = {xpath: "/html/body/form/span/div/div[1]/div[3]/div[2]/div/div/div/div[1]/div[2]/span"}
  SAVE_BTN = {css: "input[value='Save']"}
  SAVE_AND_CLOSE_BTN = {css: "input[value='Save and Close']"}

  #CSS Selectors: Popup (Lines Tab)
  LINES_TAB = {css: "a[id$='block_a_0']"}
    LINE1_ITEM_SPAN = {css: "span[id$='ctl03_wtEstimateLine_Item_ciw']"}
    LINE1_ITEM = {css: "input[id$='ctl03_wtEstimateLine_Item']"}
  #ADD_LINES = {css: "input[id$='wtAddLines']"}
  #CLEAR_LINES = {css: "input[id$='wtClearAllLines']"}
  SUBTOTAL = {css: "div[id$='SubtotalContainer']"}
  #TAX_DROPDOWN = {css: "select[id$='wtJob_TaxCode']"}
  #TAXTOTAL = {css: "input[id$='wtTotalTax']"}
  TOTAL = {css: "div[id$='TotalContainer']"}

  #CSS Selectors: Popup (Scheduling Tab)
  SCHEDULING_TAB = {css: "a[id$='block_a_1']"}
  CREW_FIELD = {css: "a[id$='EstimateCrewInput']"}
  SCHEDULED_START_FIELD = {css: "input[id$='Estimate_DateScheduledToStart']"}
  SCHEDULED_COMPLETE_FIELD = {css: "input[id$='Estimate_DateScheduledToComplete']"}
  STARTED_FIELD = {css: "input[id$='Estimate_DateStarted']"}
  COMPLETED_FIELD = {css: "input[id$='Estimate_DateCompleted']"}
  DATE_CANCELED_FIELD = {css: "input[id$='Estimate_DateCanceledInput']"}
  DATE_HOLD_FIELD = {css: "input[id$='Estimate_DateOnHoldInput']"}

  #CSS Selectors: Popup (Customer Contacts Tab)
  CUSTOMER_CONTACTS_TAB = {css: "a[id$='block_a_2']"}
  #Use Contacts Class

  #CSS Selectors: Popup (Notes Tab)
  NOTES_TAB = {css: "a[id$='block_a_3']"}
  SCOPE_OF_WORK_FIELD = {css: "textarea[id$='wtColumn1_wtScopeofWork']"}
  ADDITIONAL_NOTES_FIELD = {css: "textarea[id$='wtColumn2_wtAdditionalNotes']"}
  SPECIAL_INSTRUCTIONS_FIELD = {css: "textarea[id$='wtColumn1_wtSpecialInstructions']"}
  PRIVATE_NOTES_FIELD = {css: "textarea[id$='wtColumn2_wtPrivateNotes']"}

  #CSS Selectors: Popup (Activities Tab)
  ACTIVITIES_TAB = {css: "a[id$='block_a_4']"}
  SEARCH_ACTIVITY = {css: "input[id$='ActivitiesSearchInput']"}
  TOP_ACTIVITY = {css: "a[id$='ctl03_wtActivityIdLink']"}
  TOP_ACTIVITY_DESCRIPTION = {xpath: "/html/body/form/span/div/div[1]/div[2]/div[5]/div/div[3]/table/tbody/tr[1]/td[5]"}
  ESTIMATE_ACTIVITY_SEARCH_BTN = {css: "input[id$='EstimateSearchActivities']"}
  ESTIMATE_ACTIVITY_RESET_BTN = {css: "input[id$='EstimateResetActivities']"}

  #CSS Selectors: Popup (Jobs Tab)
  JOBS_TAB = {css: "a[id$='block_a_5']"}
  SEARCH_JOB = {css: "input[id$='JobSearchInput']"}
  TOP_JOB = {css: "a[id$='ctl03_wtJobIdLink']"}
  ESTIMATE_JOB_SEARCH_BTN = {css: "input[id$='EstimateSearchJobs']"}
  ESTIMATE_JOB_RESET_BTN = {css: "input[id$='EstimateResetJobs']"}

  #CSS Selectors: Frame Anchors
  FRAME = {css: "iframe[tabindex='0']"}
  ACTIVITY_REASON_DROPDOWN = {css: "select[id$='ActivityReasonCombobox']"}
  INVOICE_PONUMBER_FIELD = {css: "input[id$='Invoice_PONumber']"}
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

  #CSS Methods: Grid
  def open_estimates()
    i = 0
    loopcount = 5
    loop do
      i += 1
      begin
      wait = Selenium::WebDriver::Wait.new(:timeout => 10)
      wait.until {@driver.find_element(ESTIMATES_OPTN).displayed?}
      rescue Selenium::WebDriver::Error::StaleElementReferenceError
        false
      end
      if @driver.find_element(ESTIMATES_OPTN).displayed? == true
        break
      end
      if i == loopcount
        raise StaleError
      end
    end
    estimates_button = @driver.find_element(ESTIMATES_OPTN)
    estimates_button.click
    wait2 = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait2.until {@driver.find_element(TOP_REFNUMBER).displayed?}
  end

  def create_estimate()
    i = 0
    loopcount = 5
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(CREATE_ESTIMATE_BTN).displayed?}
    create_esimate_button = @driver.find_element(CREATE_ESTIMATE_BTN)
    create_esimate_button.click
    loop do
      i += 1
      @driver.switch_to.frame(0)
      begin
        wait2 = Selenium::WebDriver::Wait.new(:timeout => 2)
        wait2.until {@driver.find_element(CUSTOMER_SEARCH_FIELD).displayed?}
      rescue Selenium::WebDriver::Error::TimeoutError
        false
      end
      if
        begin
          @driver.find_element(CUSTOMER_SEARCH_FIELD).displayed? == true
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

  def select_customer(selectcustomer)
    i = 0
    loopcount = 5
    f = 0
    frameloopcount = 10
    select_customer = @driver.find_element(CUSTOMER_SEARCH_FIELD)
		select_customer.send_keys(selectcustomer)
		sleep(1)
		@driver.action.send_keys(:enter).perform
		sleep(1)
		select_customer_next = @driver.find_element(CUSTOMER_NEXT_BTN)
		select_customer_next.click
    loop do
      i += 1
        loop do
          f += 1
          begin
            @driver.switch_to.default_content
            @driver.switch_to.frame(0)
          rescue Selenium::WebDriver::Error::NoSuchFrameError
            false
          end
          break
          if f == frameloopcount
            raise FrameError
          end
        end
      begin
        wait2 = Selenium::WebDriver::Wait.new(:timeout => 2)
        wait2.until {@driver.find_element(NAME_FIELD).displayed?}
      rescue Selenium::WebDriver::Error::TimeoutError
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

  def dev_select_customer(selectcustomer)
    i = 0
    loopcount = 5
    f= 0
    frameloopcount = 10
    select_customer = @driver.find_element(CUSTOMER_SEARCH_FIELD)
    select_customer.send_keys(selectcustomer)
    sleep(2)
    @driver.action.send_keys(:enter).perform
    sleep(2)
    select_customer_next = @driver.find_element(CUSTOMER_NEXT_BTN)
    select_customer_next.click
    loop do
      i += 1
        loop do
          f += 1
          begin
            @driver.switch_to.default_content
            @driver.switch_to.frame(0)
          rescue Selenium::WebDriver::Error::NoSuchFrameError
            false
          end
          break
          if f == frameloopcount
            raise FrameError
          end
        end
      begin
        wait2 = Selenium::WebDriver::Wait.new(:timeout => 2)
        wait2.until {@driver.find_element(NAME_FIELD).displayed?}
      rescue Selenium::WebDriver::Error::TimeoutError
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

  def refresh_grid()
    @driver.navigate.refresh
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait.until {@driver.find_element(TOP_REFNUMBER).displayed?}
  end

  def top()
    top_record = @driver.find_element(TOP_ESTIMATE)
  end

  def top_refnumber()
    top_refnumber = @driver.find_element(TOP_REFNUMBER)
  end

  def top_status()
    top_refnumber = @driver.find_element(TOP_STATUS)
  end

  def top_stage()
    top_refnumber = @driver.find_element(TOP_STAGE)
  end

  def top_type()
    top_refnumber = @driver.find_element(TOP_TYPE)
  end

  def top_datesent()
    @driver.execute_script("arguments[0].scrollIntoView();", @driver.find_element(TOP_DATESENT))
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(TOP_DATESENT).displayed?}
    wait2 = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait.until {@driver.find_element(TOP_DATESENT).text != ""}
    top_datesent = @driver.find_element(TOP_DATESENT)
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
      rescue Selenium::WebDriver::Error::TimeoutError
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
    wait.until {@driver.find_element(TOP_ESTIMATE_ACTIONS).displayed?}
    top_actions = @driver.find_element(TOP_ESTIMATE_ACTIONS)
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
      @driver.switch_to.frame(0)
      begin
        wait2 = Selenium::WebDriver::Wait.new(:timeout => 2)
        wait2.until {@driver.find_element(ACTIVITY_REASON_DROPDOWN).displayed?}
      rescue Selenium::WebDriver::Error::TimeoutError
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

  def actions_createinvoice()
    i = 0
    loopcount = 5
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(ACTIONS_CREATEINVOICE).displayed?}
    top_createinvoice = @driver.find_element(ACTIONS_CREATEINVOICE)
    top_createinvoice.click
    loop do
      i += 1
      @driver.switch_to.frame(0)
      begin
        wait2 = Selenium::WebDriver::Wait.new(:timeout => 2)
        wait2.until {@driver.find_element(INVOICE_PONUMBER_FIELD).displayed?}
      rescue Selenium::WebDriver::Error::TimeoutError
        false
      end
      if
        begin
          @driver.find_element(INVOICE_PONUMBER_FIELD).displayed? == true
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
      rescue Selenium::WebDriver::Error::TimeoutError
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
      @driver.switch_to.frame(0)
      begin
        wait2 = Selenium::WebDriver::Wait.new(:timeout => 2)
        wait2.until {@driver.find_element(PRINTEMAIL_PDF_CHECKBOX).displayed?}
      rescue Selenium::WebDriver::Error::TimeoutError
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

  def actions_duplicateestimate()
    i = 0
    loopcount = 5
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(ACTIONS_DUPLICATEESTIMATE).displayed?}
    top_duplicate = @driver.find_element(ACTIONS_DUPLICATEESTIMATE)
    top_duplicate.click
    loop do
      i += 1
      @driver.switch_to.frame(0)
      begin
        wait2 = Selenium::WebDriver::Wait.new(:timeout => 2)
        wait2.until {@driver.find_element(NAME_FIELD).displayed?}
      rescue Selenium::WebDriver::Error::TimeoutError
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

  def actions_makeinactive()
    currenttopref = @driver.find_element(TOP_REFNUMBER).text
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(ACTIONS_MAKEINACTIVE).displayed?}
    top_makeinactive = @driver.find_element(ACTIONS_MAKEINACTIVE)
    top_makeinactive.click
    wait2 = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait2.until {@driver.find_element(PUSH_CONFIRM).displayed?}
    confirm = @driver.find_element(PUSH_CONFIRM)
    confirm.click
    wait3 = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait3.until {@driver.find_element(TOP_REFNUMBER).text != currenttopref}
  end

  def search_estimate(searchname)
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(SEARCH_FIELD).displayed?}
    record_search = @driver.find_element(SEARCH_FIELD)
    record_search.send_keys(searchname)
    wait2 = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait2.until {@driver.find_element(SEARCH_BTN).displayed?}
    search_confirm = @driver.find_element(SEARCH_BTN)
    search_confirm.click
    wait3 = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait3.until {@driver.find_element(TOP_ESTIMATE).text.downcase.include?(searchname.downcase)}
  end

  def search_estimateid(searchname)
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
    estimate_search = @driver.find_element(ID_COLUMN)
    estimate_search.send_keys(searchname)
    @driver.action.send_keys(:enter).perform
    wait2 = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait2.until {@driver.find_element(TOP_REFNUMBER).text.include?(searchname)}
  end

  def search_estimateid_field()
    field = @driver.find_element(ID_COLUMN)
  end

  def search_estimatename(searchname)
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
    estimate_search = @driver.find_element(NAME_COLUMN)
    estimate_search.send_keys(searchname)
    @driver.action.send_keys(:enter).perform
    wait2 = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait2.until {@driver.find_element(TOP_ESTIMATE).text.downcase.include?(searchname.downcase)}
  end

  def search_estimateid_field()
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
    sleep(4)
  end

  def grid_options()
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(GRID_OPTIONS_DROPDOWN).displayed?}
    grid_options = @driver.find_element(GRID_OPTIONS_DROPDOWN)
    grid_options.click
  end

  def export_estimates()
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(EXPORT_ESTIMATES).displayed?}
    export_estimates = @driver.find_element(EXPORT_ESTIMATES)
    export_estimates.click
    sleep(2)
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
    estimates_records = @driver.find_element(GRID_TOTAL)
    estimates_count = estimates_records.text
    print "Estimates: \n"
    print "%s \n" % estimates_count
    print "Load Time: %s ms \n\n" % loadPerformance
  end

  #CSS Methods: Popup
  def name(estimatename)
    estimate_name = @driver.find_element(NAME_FIELD)
		estimate_name.send_keys(estimatename)
  end

  def location(locationselect)
    dropdown_list = @driver.find_element(LOCATION_DROPDOWN)
		options = dropdown_list.find_elements(tag_name: 'option')
		options.each {|option| option.click if option.text == (locationselect)}
  end

  def type(typeselect)
    dropdown_list = @driver.find_element(TYPE_DROPDOWN)
    options = dropdown_list.find_elements(tag_name: 'option')
    options.each {|option| option.click if option.text == (typeselect)}
  end

  def stage(stageselect)
    dropdown_list = @driver.find_element(STAGE_DROPDOWN)
    options = dropdown_list.find_elements(tag_name: 'option')
    options.each {|option| option.click if option.text == (stageselect)}
  end

  def customer(customername)
    customer_name = @driver.find_element(CUSTOMER_FIELD)
		customer_name.send_keys(customername)
  end

  def patrol(patrolname)
    patrol_name = @driver.find_element(PATROL_FIELD)
    patrol_name.send_keys(patrolname)
  end

  def effective_on(effectiveon)
    estimate_name = @driver.find_element(EFFECTIVEON_FIELD)
    estimate_name.send_keys(effectiveon)
  end

  def expires_on(ponumber)
    po_number = @driver.find_element(EXPIRESON_FIELD)
    po_number.send_keys(ponumber)
  end

  def account_executive(accountexecutive)
    dropdown_list = @driver.find_element(ACCOUNT_EXECUTIVE_DROPDOWN)
    options = dropdown_list.find_elements(tag_name: 'option')
    options.each {|option| option.click if option.text == (accountexecutive)}
  end

  def nte(ntefield)
    po_number = @driver.find_element(NTE_FIELD)
    po_number.send_keys(ntefield)
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
    @driver.switch_to.default_content
    wait2 = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait2.until {@driver.find_element(TOP_REFNUMBER).displayed?}
  end

  #CSS Methods: Popup (Lines)
  def lines_tab()
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(LINES_TAB).displayed?}
    lines_tab = @driver.find_element(LINES_TAB)
    lines_tab.click
  end

  def line1_item(item1)
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(LINE1_ITEM_SPAN).displayed?}
    span_field = @driver.find_element(LINE1_ITEM_SPAN)
    span_field.click
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(LINE1_SERVICE_DATE).displayed?}
    item_field = @driver.find_element(LINE1_SERVICE_DATE)
    item_field.send_keys(item1)
    sleep(1)
    @driver.action.send_keys(:enter).perform
    sleep(1)
  end

  #CSS Methods: Popup (Scheduling)
  def scheduling_tab()
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(SCHEDULING_TAB).displayed?}
    scheduling_tab = @driver.find_element(SCHEDULING_TAB)
    scheduling_tab.click
  end

  def estimate_cancel(jobcancel)
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(JOB_CANCELED_FIELD).displayed?}
    jobcanceled_field = @driver.find_element(JOB_CANCELED_FIELD)
    jobcanceled_field.send_keys(jobcancel)
  end

  def estimate_hold(jobhold)
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(JOB_HOLD_FIELD).displayed?}
    jobhold_field = @driver.find_element(JOB_HOLD_FIELD)
    jobhold_field.send_keys(jobhold)
  end

  def estimate_complete(jobcomplete)
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(JOB_COMPLETED_FIELD).displayed?}
    jobcompleted_field = @driver.find_element(JOB_COMPLETED_FIELD)
    jobcompleted_field.send_keys(jobcomplete)
  end

  #CSS Methods: Popup (Contacts)
  def contacts_tab()
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(CUSTOMER_CONTACTS_TAB).displayed?}
    contacts_tab = @driver.find_element(CUSTOMER_CONTACTS_TAB)
    contacts_tab.click
  end
  #Use Class - Contacts Resource from here

  #CSS Methods: Popup (Notes)
  def notes_tab()
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(NOTES_TAB).displayed?}
    notes_tab = @driver.find_element(NOTES_TAB)
    notes_tab.click
  end

  def scope_of_work(scopeofwork)
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(SCOPE_OF_WORK_FIELD).displayed?}
    scope_of_work = @driver.find_element(SCOPE_OF_WORK_FIELD)
    scope_of_work.send_keys(scopeofwork)
  end

  def additional_notes(additionalnotes)
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(ADDITIONAL_NOTES_FIELD).displayed?}
    additional_notes = @driver.find_element(ADDITIONAL_NOTES_FIELD)
    additional_notes.send_keys(additionalnotes)
  end

  def special_instructions(specialinstructions)
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(SPECIAL_INSTRUCTIONS_FIELD).displayed?}
    special_instructions = @driver.find_element(SPECIAL_INSTRUCTIONS_FIELD)
    special_instructions.send_keys(specialinstructions)
  end

  def private_notes(privatenotes)
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(PRIVATE_NOTES_FIELD).displayed?}
    private_notes = @driver.find_element(PRIVATE_NOTES_FIELD)
    private_notes.send_keys(privatenotes)
  end

  #CSS Methods: Popup (Activities)
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
    wait2.until {@driver.find_element(ESTIMATE_ACTIVITY_SEARCH_BTN).displayed?}
    search_confirm = @driver.find_element(ESTIMATE_ACTIVITY_SEARCH_BTN)
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
      rescue Selenium::WebDriver::Error::TimeoutError
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

  #CSS Methods: Popup (Jobs)
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
    wait2.until {@driver.find_element(ESTIMATE_JOB_SEARCH_BTN).displayed?}
    search_confirm = @driver.find_element(ESTIMATE_JOB_SEARCH_BTN)
    search_confirm.click
    wait3 = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait3.until {@driver.find_element(TOP_JOB).downcase.include?(searchactivity.downcase)}
  end

  def top_invoice()
    i = 0
    loopcount = 5
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(TOP_JOB).displayed?}
    top_refnumber = @driver.find_element(TOP_JOB)
    top_refnumber.click
    loop do
      i += 1
      @driver.switch_to.frame(0)
      begin
        wait2 = Selenium::WebDriver::Wait.new(:timeout => 2)
        wait2.until {@driver.find_element(INVOICE_PONUMBER_FIELD).displayed?}
      rescue Selenium::WebDriver::Error::TimeoutError
        false
      end
      if
        begin
          @driver.find_element(INVOICE_PONUMBER_FIELD).displayed? == true
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

end
