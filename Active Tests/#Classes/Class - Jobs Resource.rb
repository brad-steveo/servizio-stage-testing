class JobsResource

  #CSS Selectors: Grid
  JOBS_OPTN = {css: "a[id$='Sidebar_Jobs']"}
  CREATE_JOB_BTN = {css: "a[id$='AddJobLink'"}
  CUSTOMER_SEARCH_FIELD = {css: "input[id$=CustomerInput]"}
  CUSTOMER_NEXT_BTN = {css: "input[value='Next']"}
  CUSTOMER_CANCEL_BTN = {css: "input[value='Cancel']"}
  TOP_JOB = {xpath: "/html/body/form/div[3]/div[3]/div[1]/div[2]/div[1]/div[3]/span/table/tbody/tr[1]/td[3]"}
    TOP_JOB_ACTIONS = {xpath: "/html/body/form/div[3]/div[3]/div[1]/div[2]/div[1]/div[3]/span/table/tbody/tr[1]/td[1]/div/div/div[1]/div[1]/span"}
      ACTIONS_VIEWJOB = {css: "a[id$='ViewJobLink']"}
      ACTIONS_CREATEACTIVITY = {css: "a[id$='CreateActivityLink']"}
      ACTIONS_CREATEINVOICE = {css: "a[id$='CreateInvoiceLink']"}
      ACTIONS_DOCUMENTS = {css: "a[id$='DocumentsLink']"}
      ACTIONS_PRINTEMAIL = {css: "a[id$='PrintEmailLink']"}
      ACTIONS_DUPLICATEJOB = {css: "a[id$='DuplicateJobLink']"}
      ACTIONS_MAKEINACTIVE = {css: "a[id$='MakeInactiveLink']"}
  TOP_REFNUMBER = {css: "a[id$='wtJobTable_ctl03_wtJobIdLink']"}
  TOP_STATUS = {xpath: "/html/body/form/div[3]/div[3]/div[1]/div[2]/div[1]/div[3]/span/table/tbody/tr[1]/td[8]"}
  TOP_TYPE = {xpath: "/html/body/form/div[3]/div[3]/div[1]/div[2]/div[1]/div[3]/span/table/tbody/tr[1]/td[9]"}
  SEARCH_FIELD = {css: "input[id$='SearchInput']"}
  SEARCH_BTN = {css: "input[value='Search']"}
  RESET_BTN = {css: "input[value='Reset']"}
  GRID_OPTIONS_DROPDOWN = {xpath: "/html/body/form/div[3]/div[3]/div[1]/div[2]/div[1]/div[2]/div[2]/div[2]/div/div[1]/div/span"}
    EXPORT_JOBS = {css: "a[id$='ExportGridLink']"}
    SHOW_INACTIVES = {css: "input[id$='ShowInactivesCheckbox']"}
  GRID_TOTAL = {class: "Counter_Message"}
  ID_COLUMN = {css: "input[id$='wtIdSearchTextInput']"}
  NAME_COLUMN = {css: "input[id$='wtNameSearchTextInput']"}

  #CSS Selectors: Popup
  NAME_FIELD = {css: "input[id$='Job_Name']"}
  LOCATION_DROPDOWN = {css: "select[id$='LocationCombobox']"}
  TYPE_DROPDOWN = {css: "select[id$='JobTypeCombobox']"}
  CUSTOMER_FIELD = {css: "input[id$='CustomerInput']"}
  PATROL_FIELD = {css: "input[id$='Patrollnput']"}
  ESTIMATE_FIELD = {css: "input[id$='EstimateInput']"}
  PONUMBER_FIELD = {css: "input[id$='PONumber']"}
  ACCOUNT_EXECUTIVE_DROPDOWN = {css: "select[id$='AccountExecutive']"}
  NTE_FIELD = {css: "input[id$='NotToExceed']"}
  CANCEL_BTN = {css: "input[value='Cancel']"}
  ACTIONS_BTN = {xpath: "/html/body/form/div[3]/div[1]/div[3]/div[3]/div/div/div[1]/div[2]/span"}
  SAVE_BTN = {css: "input[value='Save']"}
  SAVE_AND_CLOSE_BTN = {css: "input[value='Save and Close']"}

  #CSS Selectors: Popup (Lines Tab)
  LINES_TAB = {css: "a[id$='block_a_0']"}
    LINE1_SERVICE_DATE_SPAN = {css: "span[id$='ctl03_wtJobLine_ServiceDate_ciw']"}
    LINE1_ITEM_SPAN = {css: "span[id$='ctl03_wtJobLine_Item_ciw']"}
    LINE1_SERVICE_DATE = {css: "input[id$='ctl03_wtJobLine_ServiceDate']"}
    LINE1_ITEM = {css: "input[id$='ctl03_wtJobLine_Item']"}
    LINE1_DESCRIPTION = {css: "span[id$='ctl03_wtJobLine_Description_ciw']"}
    LINE1_DESCRIPTION_TEXTAREA = {css: "textarea[id$='ctl03_wtJobLine_Description']"}
    LINE1_QUANTITY_SPAN = {css: "span[id$='ctl03_wtJobLine_Qty_ciw']"}
    LINE1_QUANTITY = {css: "input[id$='ctl03_wtJobLine_Qty']"}
    LINE1_TOTAL_SPAN = {css: "span[id$='ctl03_wtJobLine_Amount_ciw']"}
    LINE1_TOTAL = {css: "input[id$='ctl03_wtJobLine_Amount']"}
    LINE1_DELETE = {xpath: "/html/body/form/div[3]/div[1]/div[2]/div[1]/div[1]/span[3]/table/tbody/tr/td[15]/div/a/span"}
    LINE2_SERVICE_DATE_SPAN = {css: "span[id$='ctl04_wtJobLine_ServiceDate_ciw']"}
    LINE2_ITEM_SPAN = {css: "span[id$='ctl04_wtJobLine_Item_ciw']"}
    LINE2_SERVICE_DATE = {css: "input[id$='ctl04_wtJobLine_ServiceDate']"}
    LINE2_ITEM = {css: "input[id$='ctl04_wtJobLine_Item']"}
    LINE2_DESCRIPTION = {css: "span[id$='ctl04_wtJobLine_Description_ciw']"}
    LINE2_DESCRIPTION_TEXTAREA = {css: "textarea[id$='ctl04_wtJobLine_Description']"}
    LINE2_QUANTITY_SPAN = {css: "span[id$='ctl04_wtJobLine_Qty_ciw']"}
    LINE2_QUANTITY = {css: "input[id$='ctl04_wtJobLine_Qty']"}
    LINE2_TOTAL_SPAN = {css: "span[id$='ctl04_wtJobLine_Amount_ciw']"}
    LINE2_TOTAL = {css: "input[id$='ctl04_wtJobLine_Amount']"}
    LINE2_DELETE = {xpath: "/html/body/form/div[3]/div[1]/div[2]/div[1]/div[1]/span[2]/table/tbody/tr[2]/td[15]/div/a/span"}
    LINE3_SERVICE_DATE_SPAN = {css: "span[id$='ctl05_wtJobLine_ServiceDate_ciw']"}
    LINE3_ITEM_SPAN = {css: "span[id$='ctl05_wtJobLine_Item_ciw']"}
    LINE3_SERVICE_DATE = {css: "input[id$='ctl05_wtJobLine_ServiceDate']"}
    LINE3_ITEM = {css: "input[id$='ctl05_wtJobLine_Item']"}
    LINE3_DESCRIPTION = {css: "span[id$='ctl05_wtJobLine_Description_ciw']"}
    LINE3_DESCRIPTION_TEXTAREA = {css: "textarea[id$='ctl05_wtJobLine_Description']"}
    LINE3_QUANTITY_SPAN = {css: "span[id$='ctl05_wtJobLine_Qty_ciw']"}
    LINE3_QUANTITY = {css: "input[id$='ctl05_wtJobLine_Qty']"}
    LINE3_TOTAL_SPAN = {css: "span[id$='ctl05_wtJobLine_Amount_ciw']"}
    LINE3_TOTAL = {css: "input[id$='ctl05_wtJobLine_Amount']"}
    LINE3_DELETE = {xpath: "/html/body/form/div[3]/div[1]/div[2]/div[1]/div[1]/span[2]/table/tbody/tr[3]/td[15]/div/a/span"}
  ADD_LINES = {css: "input[id$='wtAddLines']"}
  CLEAR_LINES = {css: "input[id$='wtClearAllLines']"}
  NEW_LINE_VERIFY = {xpath: "/html/body/form/div[3]/div[1]/div[2]/div[1]/div[1]/span[3]/table/tbody/tr[3]/td[2]/div"}
  SUBTOTAL = {css: "div[id$='SubtotalContainer']"}
  TAX_DROPDOWN = {css: "select[id$='wtJob_TaxCode']"}
  TAXTOTAL = {css: "input[id$='wtTotalTax']"}
  TOTAL = {css: "div[id$='TotalContainer']"}

  #CSS Selectors: Popup (Scheduling Tab)
  SCHEDULING_TAB = {css: "a[id$='block_a_1']"}
  JOB_CANCELED_FIELD = {css: "input[id$='DateCanceledInput']"}
  JOB_HOLD_FIELD = {css: "input[id$='DateOnHoldInput']"}
  JOB_COMPLETED_FIELD = {css: "input[id$='DateCompletedInput']"}
  NEW_TRIP_BTN = {css: "input[id$='NewTripButton']"}
    TRIP1_CREW = {css: "select[id$='ctl00_wtJobTripCrew']"}
    TRIP1_SCHEDULED_START = {css: "input[id$='ctl00_wtJobTrip_DateScheduledToStartInput']"}
    TRIP1_SCHEDULED_FINISH = {css: "input[id$='ctl00_wtJobTrip_DateScheduledToFinishInput']"}
    TRIP1_START = {css: "input[id$='ctl00_wtJobTrip_DateStartedInput']"}
    TRIP1_FINISH = {css: "input[id$='ctl00_wtJobTrip_DateFinishedInput']"}
    TRIP2_CREW = {css: "select[id$='ctl02_wtJobTripCrew']"}
    TRIP2_SCHEDULED_START = {css: "input[id$='ctl02_wtJobTrip_DateScheduledToStartInput']"}
    TRIP2_SCHEDULED_FINISH = {css: "input[id$='ctl02_wtJobTrip_DateScheduledToFinishInput']"}
    TRIP2_START = {css: "input[id$='ctl02_wtJobTrip_DateStartedInput']"}
    TRIP2_FINISH = {css: "input[id$='ctl02_wtJobTrip_DateFinishedInput']"}
    TRIP3_CREW = {css: "select[id$='ctl04_wtJobTripCrew']"}
    TRIP3_SCHEDULED_START = {css: "input[id$='ctl04_wtJobTrip_DateScheduledToStartInput']"}
    TRIP3_SCHEDULED_FINISH = {css: "input[id$='ctl04_wtJobTrip_DateScheduledToFinishInput']"}
    TRIP3_START = {css: "input[id$='ctl04_wtJobTrip_DateStartedInput']"}
    TRIP3_FINISH = {css: "input[id$='ctl04_wtJobTrip_DateFinishedInput']"}
  DELETE_TOP_TRIP = {xpath: "/html/body/form/div[3]/div[1]/div[2]/div[2]/div[3]/span/span[1]/div[7]/a/span"}

  #CSS Selectors: Popup (Customer Contacts Tab)
  CUSTOMER_CONTACTS_TAB = {css: "a[id$='block_a_2']"}
  #Use Contacts Class

  #CSS Selectors: Popup (Notes Tab)
  NOTES_TAB = {css: "a[id$='block_a_3']"}
  SCOPE_OF_WORK_FIELD = {css: "textarea[id$='wtColumn1_wtScopeofWorkTextArea']"}
  ADDITIONAL_NOTES_FIELD = {css: "textarea[id$='wtColumn2_wtAdditionalNotesTextArea']"}
  SPECIAL_INSTRUCTIONS_FIELD = {css: "textarea[id$='wtColumn1_wtSpecialInstructionsTextArea']"}
  PRIVATE_NOTES_FIELD = {css: "textarea[id$='wtColumn2_wtPrivateNotesTextArea']"}

  #CSS Selectors: Popup (Activities Tab)
  ACTIVITIES_TAB = {css: "a[id$='block_a_4']"}
  SEARCH_ACTIVITY = {css: "input[id$='ActivitiesSearchInput']"}
  TOP_ACTIVITY = {css: "a[id$='ctl03_wtActivityIdLink']"}
  TOP_ACTIVITY_DESCRIPTION = {xpath: "/html/body/form/div[3]/div[1]/div[2]/div[5]/div/div[3]/table/tbody/tr[1]/td[5]"}
  JOB_ACTIVITY_SEARCH_BTN = {css: "input[id$='JobSearchActivities']"}
  JOB_ACTIVITY_RESET_BTN = {css: "input[id$='JobResetActivities']"}

  #CSS Selectors: Popup (Invoices Tab)
  INVOICES_TAB = {css: "a[id$='block_a_5']"}
  SEARCH_INVOICE = {css: "input[id$='InvoiceSearchInput']"}
  TOP_INVOICE = {css: "a[id$='ctl03_wtInvoiceIdLink']"}
  JOB_INVOICE_SEARCH_BTN = {css: "input[id$='JobSearchInvoices']"}
  JOB_INVOICE_RESET_BTN = {css: "input[id$='JobResetInvoices']"}

  #CSS Selectors: Popup (Deposits Tab)
  DEPOSITS_TAB = {css: "a[id$='block_a_6']"}
  SEARCH_DEPOSIT = {css: "input[id$='DepositSearchInput']"}
  TOP_DEPOSIT = {css: "a[id$='ctl03_wtDepositInvoiceIdLink']"}
  JOB_DEPOSIT_SEARCH_BTN = {css: "input[id$='JobSearchDeposits']"}
  JOB_DEPOSIT_RESET_BTN = {css: "input[id$='JobResetDeposits']"}

  #CSS Selectors: Popup (Assets Tab)
  ASSETS_TAB = {css: "a[id$='block_a_8']"}

  #CSS Selectors: Frame Anchors
  FRAME = {css: "iframe[tabindex='0']"}
  ACTIVITY_REASON_DROPDOWN = {css: "select[id$='ActivityReasonCombobox']"}
  INVOICE_PONUMBER_FIELD = {css: "input[id$='Invoice_PONumber']"}
  DOCUMENTS_SHOWHIDE_UPLOADER = {xpath: "/html/body/form/div[3]/div[1]/div/div/div[1]/div[2]/a/span"}
  PRINTEMAIL_PDF_CHECKBOX = {css: "input[id$='AttachPDFInput']"}

  #AJAX Buffer
  AJAX = {css: "div[class='Feedback_AjaxWait']"}

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
  def open_jobs()
    i = 0
    loopcount = 5
    loop do
      i += 1
      begin
      wait = Selenium::WebDriver::Wait.new(:timeout => 10)
      wait.until {@driver.find_element(JOBS_OPTN).displayed?}
      rescue Selenium::WebDriver::Error::StaleElementReferenceError
        false
      end
      if @driver.find_element(JOBS_OPTN).displayed? == true
        break
      end
      if i == loopcount
        raise StaleError
      end
    end
    jobs_button = @driver.find_element(JOBS_OPTN)
    jobs_button.click
    wait2 = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait2.until {@driver.find_element(TOP_REFNUMBER).displayed?}
    #wait2.until {@driver.find_element(class: "Counter_Message").text != "0 records" }
  end

  def create_job()
    i = 0
    loopcount = 5
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(CREATE_JOB_BTN).displayed?}
    create_job_button = @driver.find_element(CREATE_JOB_BTN)
    create_job_button.click
    loop do
      i += 1
      @driver.switch_to.frame(0)
      begin
        wait2 = Selenium::WebDriver::Wait.new(:timeout => 2)
        wait2.until {@driver.find_element(CUSTOMER_SEARCH_FIELD).displayed?}
      rescue Selenium::WebDriver::Error::TimeOutError
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
    select_customer = @driver.find_element(CUSTOMER_SEARCH_FIELD)
		select_customer.send_keys(selectcustomer)
		sleep(1)
		@driver.action.send_keys(:enter).perform
		sleep(1)
		select_customer_next = @driver.find_element(CUSTOMER_NEXT_BTN)
		select_customer_next.click
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(FRAME).displayed?}
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
    top_record = @driver.find_element(TOP_JOB)
  end

  def top_refnumber()
    top_refnumber = @driver.find_element(TOP_REFNUMBER)
  end

  def top_status()
    top_refnumber = @driver.find_element(TOP_STATUS)
  end

  def top_type()
    top_refnumber = @driver.find_element(TOP_TYPE)
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
    wait.until {@driver.find_element(TOP_JOB_ACTIONS).displayed?}
    top_actions = @driver.find_element(TOP_JOB_ACTIONS)
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

  def actions_createinvoice()
    i = 0
    loopcount = 5
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(ACTIONS_CREATEINVOICE).displayed?}
    top_createinvoice = @driver.find_element(ACTIONS_CREATEINVOICE)
    top_createinvoice.click
    @driver.switch_to.alert.accept rescue Selenium::WebDriver::Error::NoAlertOpenError
    loop do
      i += 1
      @driver.switch_to.frame(0)
      begin
        wait2 = Selenium::WebDriver::Wait.new(:timeout => 2)
        wait2.until {@driver.find_element(INVOICE_PONUMBER_FIELD).displayed?}
      rescue Selenium::WebDriver::Error::TimeOutError
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
      @driver.switch_to.frame(0)
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

  def actions_duplicatejob()
    i = 0
    loopcount = 5
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(ACTIONS_DUPLICATEJOB).displayed?}
    top_duplicate = @driver.find_element(ACTIONS_DUPLICATEJOB)
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

  def actions_makeinactive()
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(ACTIONS_MAKEINACTIVE).displayed?}
    top_makeinactive = @driver.find_element(ACTIONS_MAKEINACTIVE)
    top_makeinactive.click
  end

  def search_job(searchname)
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(SEARCH_FIELD).displayed?}
    job_search = @driver.find_element(SEARCH_FIELD)
    job_search.send_keys(searchname)
    wait2 = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait2.until {@driver.find_element(SEARCH_BTN).displayed?}
    search_confirm = @driver.find_element(SEARCH_BTN)
    search_confirm.click
    wait3 = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait3.until {@driver.find_element(TOP_JOB).text.downcase.include?(searchname.downcase)}
  end

  def search_jobid(searchname)
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
    job_search = @driver.find_element(ID_COLUMN)
    job_search.send_keys(searchname)
    wait2 = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait2.until {@driver.find_element(TOP_REFNUMBER).text.include?(searchname)}
  end

  def search_jobid_field()
    field = @driver.find_element(ID_COLUMN)
  end

  def search_jobname(searchname)
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
    job_search = @driver.find_element(NAME_COLUMN)
    job_search.send_keys(searchname)
    wait2 = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait2.until {@driver.find_element(TOP_JOB).text.downcase.include?(searchname.downcase)}
  end

  def search_jobname_field()
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

  def export_jobs()
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(EXPORT_JOBS).displayed?}
    export_jobs = @driver.find_element(EXPORT_JOBS)
    export_jobs.click
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
    jobs_records = @driver.find_element(GRID_TOTAL)
    jobs_count = jobs_records.text
    print "Jobs: \n"
    print "%s \n" % jobs_count
    print "Load Time: %s ms \n\n" % loadPerformance
  end

  #CSS Methods: Popup
  def name(jobname)
    job_name = @driver.find_element(NAME_FIELD)
		job_name.send_keys(jobname)
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

  def customer(customername)
    customer_name = @driver.find_element(CUSTOMER_FIELD)
		customer_name.send_keys(customername)
  end

  def patrol(patrolname)
    patrol_name = @driver.find_element(PATROL_FIELD)
    patrol_name.send_keys(patrolname)
  end

  def estimate(estimatename)
    estimate_name = @driver.find_element(ESTIMATE_FIELD)
    estimate_name.send_keys(estimatename)
  end

  def po_number(ponumber)
    po_number = @driver.find_element(PONUMBER_FIELD)
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
    wait2.until {@driver.find_element(TOP_PONUMBER).displayed?}
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

  #CSS Methods: Popup (Lines)
  def lines_tab()
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(LINES_TAB).displayed?}
    lines_tab = @driver.find_element(LINES_TAB)
    lines_tab.click
  end

  def line1_service_date(servicedate1)
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(LINE1_SERVICE_DATE_SPAN).displayed?}
    span_field = @driver.find_element(LINE1_SERVICE_DATE_SPAN)
    span_field.click
    wait2 = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait2.until {@driver.find_element(LINE1_SERVICE_DATE).displayed?}
    servicedate_field = @driver.find_element(LINE1_SERVICE_DATE)
    servicedate_field.send_keys(servicedate1)
  end

  def line1_item(item1)
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(LINE1_ITEM_SPAN).displayed?}
    span_field = @driver.find_element(LINE1_ITEM_SPAN)
    span_field.click
    wait2 = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait2.until {@driver.find_element(LINE1_ITEM).displayed?}
    item_field = @driver.find_element(LINE1_ITEM)
    item_field.send_keys(item1)
    sleep(1)
    @driver.action.send_keys(:enter).perform
    sleep(1)
  end

  def line1_description(description1)
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(LINE1_DESCRIPTION).displayed?}
    span_field = @driver.find_element(LINE1_DESCRIPTION)
    span_field.click
    wait2 = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait2.until {@driver.find_element(LINE1_DESCRIPTION_TEXTAREA).displayed?}
    item_field = @driver.find_element(LINE1_DESCRIPTION_TEXTAREA)
    item_field.send_keys(description1)
    sleep(1)
    @driver.action.send_keys(:enter).perform
    sleep(1)
  end

  def line1_quantity(quantity1)
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(LINE1_QUANTITY_SPAN).displayed?}
    span_field = @driver.find_element(LINE1_QUANTITY_SPAN)
    span_field.click
    wait2 = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait2.until {@driver.find_element(LINE1_QUANTITY).displayed?}
    item_field = @driver.find_element(LINE1_QUANTITY)
    @driver.action.double_click(item_field).perform
    @driver.action.send_keys(:backspace)
    item_field.send_keys(quantity1)
    sleep(1)
    @driver.action.send_keys(:tab).perform
    sleep(1)
  end

  def line1_total(total1)
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(LINE1_TOTAL_SPAN).displayed?}
    span_total = @driver.find_element(LINE1_TOTAL_SPAN)
    span_total.click
    wait2 = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait2.until {@driver.find_element(LINE1_TOTAL).displayed?}
    total = @driver.find_element(LINE1_TOTAL)
    total.send_keys(total1)
  end

  def line1_gettotal
    total = @driver.find_element(LINE1_TOTAL_SPAN).text.to_f
  end

  def line1_delete()
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(LINE1_DELETE).displayed?}
    trashcan = @driver.find_element(LINE1_DELETE)
    trashcan.click
    wait2 = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait2.until {@driver.find_element(AJAX).displayed? == false}
  end

  def line2_service_date(servicedate2)
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(LINE2_SERVICE_DATE_SPAN).displayed?}
    span_field = @driver.find_element(LINE2_SERVICE_DATE_SPAN)
    span_field.click
    wait2 = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait2.until {@driver.find_element(LINE2_SERVICE_DATE).displayed?}
    servicedate_field = @driver.find_element(LINE2_SERVICE_DATE)
    servicedate_field.send_keys(servicedate2)
  end

  def line2_item(item2)
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(LINE2_ITEM_SPAN).displayed?}
    span_field = @driver.find_element(LINE2_ITEM_SPAN)
    span_field.click
    wait2 = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait2.until {@driver.find_element(LINE2_ITEM).displayed?}
    item_field = @driver.find_element(LINE2_ITEM)
    item_field.send_keys(item2)
    sleep(1)
    @driver.action.send_keys(:enter).perform
    sleep(1)
  end

  def line2_description(description2)
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(LINE2_DESCRIPTION).displayed?}
    span_field = @driver.find_element(LINE2_DESCRIPTION)
    span_field.click
    wait2 = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait2.until {@driver.find_element(LINE2_DESCRIPTION_TEXTAREA).displayed?}
    item_field = @driver.find_element(LINE2_DESCRIPTION_TEXTAREA)
    item_field.send_keys(description2)
    sleep(1)
    @driver.action.send_keys(:enter).perform
    sleep(1)
  end

  def line2_quantity(quantity2)

    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(LINE2_QUANTITY_SPAN).displayed?}
    span_field = @driver.find_element(LINE2_QUANTITY_SPAN)
    span_field.click
    wait2 = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait2.until {@driver.find_element(LINE2_QUANTITY).displayed?}
    item_field = @driver.find_element(LINE2_QUANTITY)
    @driver.action.double_click(item_field).perform
    @driver.action.send_keys(:backspace)
    item_field.send_keys(quantity2)
    sleep(1)
    @driver.action.send_keys(:tab).perform
    sleep(1)
  end

  def line2_total(total2)
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(LINE2_TOTAL_SPAN).displayed?}
    span_total = @driver.find_element(LINE2_TOTAL_SPAN)
    span_total.click
    wait2 = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait2.until {@driver.find_element(LINE2_TOTAL).displayed?}
    total = @driver.find_element(LINE2_TOTAL)
    total.send_keys(total2)
  end

  def line2_gettotal
    total = @driver.find_element(LINE2_TOTAL_SPAN).text.to_f
  end

  def line2_delete()
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(LINE2_DELETE).displayed?}
    trashcan = @driver.find_element(LINE2_DELETE)
    trashcan.click
  end

  def line3_service_date(servicedate3)
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(LINE3_SERVICE_DATE_SPAN).displayed?}
    span_field = @driver.find_element(LINE3_SERVICE_DATE_SPAN)
    span_field.click
    wait2 = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait2.until {@driver.find_element(LINE3_SERVICE_DATE).displayed?}
    servicedate_field = @driver.find_element(LINE3_SERVICE_DATE)
    servicedate_field.send_keys(servicedate3)
  end

  def line3_item(item3)
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(LINE3_ITEM_SPAN).displayed?}
    span_field = @driver.find_element(LINE3_ITEM_SPAN)
    span_field.click
    wait2 = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait2.until {@driver.find_element(LINE3_ITEM).displayed?}
    item_field = @driver.find_element(LINE3_ITEM)
    item_field.send_keys(item3)
    sleep(1)
    @driver.action.send_keys(:enter).perform
    sleep(1)
  end

  def line3_description(description3)
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(LINE3_DESCRIPTION).displayed?}
    span_field = @driver.find_element(LINE3_DESCRIPTION)
    span_field.click
    wait2 = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait2.until {@driver.find_element(LINE3_DESCRIPTION_TEXTAREA).displayed?}
    item_field = @driver.find_element(LINE3_DESCRIPTION_TEXTAREA)
    item_field.send_keys(description3)
    sleep(1)
    @driver.action.send_keys(:enter).perform
    sleep(1)
  end

  def line3_quantity(quantity3)
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(LINE3_QUANTITY_SPAN).displayed?}
    span_field = @driver.find_element(LINE3_QUANTITY_SPAN)
    span_field.click
    wait2 = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait2.until {@driver.find_element(LINE3_QUANTITY).displayed?}
    item_field = @driver.find_element(LINE3_QUANTITY)
    @driver.action.double_click(item_field).perform
    @driver.action.send_keys(:backspace)
    item_field.send_keys(quantity3)
    sleep(1)
    @driver.action.send_keys(:tab).perform
    sleep(1)
  end

  def line3_total(total3)
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(LINE3_TOTAL_SPAN).displayed?}
    span_total = @driver.find_element(LINE3_TOTAL_SPAN)
    span_total.click
    wait2 = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait2.until {@driver.find_element(LINE3_TOTAL).displayed?}
    total = @driver.find_element(LINE3_TOTAL)
    total.send_keys(total3)
  end

  def line3_gettotal
    total = @driver.find_element(LINE3_TOTAL_SPAN).text.to_f
  end

  def line3_delete()
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(LINE3_DELETE).displayed?}
    trashcan = @driver.find_element(LINE3_DELETE)
    trashcan.click
  end

  def add_lines()
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(ADD_LINES).displayed?}
    @driver.execute_script("window.scrollTo(0, document.body.scrollHeight)")
    button = @driver.find_element(ADD_LINES)
    button.click
    wait2 = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait2.until {@driver.find_element(AJAX).displayed? == false}
    wait3 = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait3.until {@driver.find_element(NEW_LINE_VERIFY).displayed?}
  end

  def clear_lines()
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(CLEAR_LINES).displayed?}
    @driver.execute_script("window.scrollTo(0, document.body.scrollHeight)")
    button = @driver.find_element(CLEAR_LINES)
    button.click
    wait2 = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait2.until {@driver.find_element(AJAX).displayed? == false}
    #wait3 = Selenium::WebDriver::Wait.new(:timeout => 5)
    #wait3.until {@driver.find_element(LINE1_DESCRIPTION).displayed?}
    #wait4 = Selenium::WebDriver::Wait.new(:timeout => 5)
    #wait4.until {@driver.find_element(LINE1_DESCRIPTION)['value'] == nil}
    sleep(1) #This button has nothing for me to use to wait for.
  end

  def subtotal()
    subtotal = @driver.find_element(SUBTOTAL).text.gsub(/[$,]/,'').to_f
  end

  def select_tax(taxcode)
    dropdown_list = @driver.find_element(TAX_DROPDOWN)
    options = dropdown_list.find_elements(tag_name: 'option')
    options.each {|option| option.click if option.text == (taxcode)}
  end

  def taxtotal()
    taxtotal = @driver.find_element(TAXTOTAL).value.to_f
  end

  def total()
    total = @driver.find_element(TOTAL).text
  end

  #CSS Methods: Popup (Scheduling)
  def scheduling_tab()
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(SCHEDULING_TAB).displayed?}
    scheduling_tab = @driver.find_element(SCHEDULING_TAB)
    scheduling_tab.click
  end

  def job_cancel(jobcancel)
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(JOB_CANCELED_FIELD).displayed?}
    jobcanceled_field = @driver.find_element(JOB_CANCELED_FIELD)
    jobcanceled_field.send_keys(jobcancel)
  end

  def job_hold(jobhold)
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(JOB_HOLD_FIELD).displayed?}
    jobhold_field = @driver.find_element(JOB_HOLD_FIELD)
    jobhold_field.send_keys(jobhold)
  end

  def job_complete(jobcomplete)
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(JOB_COMPLETED_FIELD).displayed?}
    jobcompleted_field = @driver.find_element(JOB_COMPLETED_FIELD)
    jobcompleted_field.send_keys(jobcomplete)
  end

  def new_trip()
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(NEW_TRIP_BTN).displayed?}
    new_trip = @driver.find_element(NEW_TRIP_BTN)
    new_trip.click
  end

  def trip1_crew(trip1crew)
    dropdown_list = @driver.find_element(TRIP1_CREW)
		options = dropdown_list.find_elements(tag_name: 'option')
		options.each {|option| option.click if option.text == (locationselect)}
  end

  def trip1_schedulestart(trip1schedulestart)
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(TRIP1_SCHEDULED_START).displayed?}
    trip_field = @driver.find_element(TRIP1_SCHEDULED_START)
    trip_field.send_keys(trip1schedulestart)
  end

  def trip1_schedulefinish(trip1schedulefinish)
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(TRIP1_SCHEDULED_FINISH).displayed?}
    trip_field = @driver.find_element(TRIP1_SCHEDULED_FINISH)
    trip_field.send_keys(trip1schedulefinish)
  end

  def trip1_start(trip1start)
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(TRIP1_START).displayed?}
    trip_field = @driver.find_element(TRIP1_START)
    trip_field.send_keys(trip1start)
  end

  def trip1_finish(trip1finish)
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(TRIP1_FINISH).displayed?}
    trip_field = @driver.find_element(TRIP1_FINISH)
    trip_field.send_keys(trip1finish)
  end

  def trip2_crew(trip2crew)
    dropdown_list = @driver.find_element(TRIP2_CREW)
		options = dropdown_list.find_elements(tag_name: 'option')
		options.each {|option| option.click if option.text == (locationselect)}
  end

  def trip2_schedulestart(trip2schedulestart)
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(TRIP2_SCHEDULED_START).displayed?}
    trip_field = @driver.find_element(TRIP2_SCHEDULED_START)
    trip_field.send_keys(trip2schedulestart)
  end

  def trip2_schedulefinish(trip2schedulefinish)
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(TRIP2_SCHEDULED_FINISH).displayed?}
    trip_field = @driver.find_element(TRIP2_SCHEDULED_FINISH)
    trip_field.send_keys(trip2schedulefinish)
  end

  def trip2_start(trip2start)
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(TRIP2_START).displayed?}
    trip_field = @driver.find_element(TRIP2_START)
    trip_field.send_keys(trip2start)
  end

  def trip2_finish(trip2finish)
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(TRIP2_FINISH).displayed?}
    trip_field = @driver.find_element(TRIP2_FINISH)
    trip_field.send_keys(trip2finish)
  end

  def trip3_crew(trip3crew)
    dropdown_list = @driver.find_element(TRIP3_CREW)
    options = dropdown_list.find_elements(tag_name: 'option')
    options.each {|option| option.click if option.text == (locationselect)}
  end

  def trip3_schedulestart(trip3schedulestart)
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(TRIP3_SCHEDULED_START).displayed?}
    trip_field = @driver.find_element(TRIP3_SCHEDULED_START)
    trip_field.send_keys(trip3schedulestart)
  end

  def trip3_schedulefinish(trip3schedulefinish)
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(TRIP3_SCHEDULED_FINISH).displayed?}
    trip_field = @driver.find_element(TRIP3_SCHEDULED_FINISH)
    trip_field.send_keys(trip3schedulefinish)
  end

  def trip3_start(trip3start)
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(TRIP3_START).displayed?}
    trip_field = @driver.find_element(TRIP3_START)
    trip_field.send_keys(trip3start)
  end

  def trip3_finish(trip3finish)
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(TRIP3_FINISH).displayed?}
    trip_field = @driver.find_element(TRIP3_FINISH)
    trip_field.send_keys(trip3finish)
  end

  def delete_trip1()
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(DELETE_TOP_TRIP).displayed?}
    delete_trip = @driver.find_element(DELETE_TOP_TRIP)
    delete_trip.click
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
    wait2 = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait2.until {@driver.find_element(JOB_ACTIVITY_SEARCH_BTN).displayed?}
    search_confirm = @driver.find_element(JOB_ACTIVITY_SEARCH_BTN)
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

  #CSS Methods: Popup (Invoices)
  def invoices_tab()
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(INVOICES_TAB).displayed?}
    invoices_tab = @driver.find_element(INVOICES_TAB)
    invoices_tab.click
  end

  def search_invoice(searchinvoice)
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(SEARCH_INVOICE).displayed?}
    invoice_search = @driver.find_element(SEARCH_INVOICE)
    invoice_search.send_keys(searchinvoice)
    wait2 = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait2.until {@driver.find_element(JOB_INVOICE_SEARCH_BTN).displayed?}
    search_confirm = @driver.find_element(JOB_INVOICE_SEARCH_BTN)
    search_confirm.click
    wait3 = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(TOP_INVOICE).text.include?(searchinvoice)}
  end

  def top_invoice()
    i = 0
    loopcount = 5
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(TOP_INVOICE).displayed?}
    top_refnumber = @driver.find_element(TOP_INVOICE)
    top_refnumber.click
    loop do
      i += 1
      @driver.switch_to.frame(0)
      begin
        wait2 = Selenium::WebDriver::Wait.new(:timeout => 2)
        wait2.until {@driver.find_element(INVOICE_PONUMBER_FIELD).displayed?}
      rescue Selenium::WebDriver::Error::TimeOutError
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

  #CSS Methods: Popup (Deposits)
  def deposits_tab()
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(DEPOSITS_TAB).displayed?}
    deposits_tab = @driver.find_element(DEPOSITS_TAB)
    deposits_tab.click
  end

  def search_deposit(searchdeposit)
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(SEARCH_DEPOSIT).displayed?}
    deposit_search = @driver.find_element(SEARCH_DEPOSIT)
    deposit_search.send_keys(searchdeposit)
    wait2 = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait2.until {@driver.find_element(JOB_DEPOSIT_SEARCH_BTN).displayed?}
    search_confirm = @driver.find_element(JOB_DEPOSIT_SEARCH_BTN)
    search_confirm.click
    wait3 = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait3.until {@driver.find_element(TOP_DEPOSIT).text.include?(searchdeposit)}
  end

  def top_deposit()
    i = 0
    loopcount = 5
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(TOP_DEPOSIT).displayed?}
    top_refnumber = @driver.find_element(TOP_DEPOSIT)
    top_refnumber.click
    loop do
      i += 1
      @driver.switch_to.frame(0)
      begin
        wait2 = Selenium::WebDriver::Wait.new(:timeout => 2)
        wait2.until {@driver.find_element(INVOICE_PONUMBER_FIELD).displayed?}
      rescue Selenium::WebDriver::Error::TimeOutError
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

  #CSS Methods: Popup (Assets)
  def assets_tab()
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(ASSETS_TAB).displayed?}
    assets_tab = @driver.find_element(ASSETS_TAB)
    assets_tab.click
  end

end
