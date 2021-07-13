class CustomersResource

  #CSS Selectors: Grid
  CUSTOMERS_OPTN = {css: "a[id$='Sidebar_Customers']"}
  CREATE_CUSTOMER_BTN = {css: "a[id$='CreateCustomerlink'"}
  TOP_CUSTOMER = {xpath: "/html/body/form/div[3]/div[3]/div[1]/div[2]/div[2]/div[3]/span/table/tbody/tr[1]/td[3]/div[1]"}
    TOP_CUSTOMER_ACTIONS = {xpath: "/html/body/form/div[3]/div[3]/div[1]/div[2]/div[2]/div[3]/span/table/tbody/tr[1]/td[1]/div/div/div/div[1]/div[1]/span"}
      ACTIONS_VIEWCUSTOMER = {css: "a[id$='ViewCustomerLink']"}
      ACTIONS_CREATEACTIVITY = {css: "a[id$='CreateActivityLink']"}
      ACTIONS_CREATEESTIMATE = {css: "a[id$='CreateEstimateLink']"}
      ACTIONS_CREATEJOB = {css: "a[id$='CreateJobLink']"}
      ACTIONS_CREATEINVOICE = {css: "a[id$='CreateInvoiceLink']"}
      ACTIONS_DUPLICATECUSTOMER = {css: "a[id$='DuplicateCustomerLink']"}
      ACTIONS_RECOMMENDROUTE = {css: "a[id$='RecommendRouteLink']"}
      ACTIONS_DOCUMENTS = {css: "a[id$='DocumentsLink']"}
      ACTIONS_ADDPRICING = {css: "a[id$='wtAddPricing']"}
  TOP_REFNUMBER = {css: "a[id$='CustomerTable_ctl03_wtCustomerIdLink']"}
  TOP_STAGE = {xpath: "/html/body/form/div[3]/div[3]/div[1]/div[2]/div[2]/div[3]/span/table/tbody/tr[1]/td[8]"}
  TOP_TYPE = {xpath: "/html/body/form/div[3]/div[3]/div[1]/div[2]/div[2]/div[3]/span/table/tbody/tr[1]/td[9]"}
  TOP_PATROL_TYPE = {xpath: "/html/body/form/div[3]/div[3]/div[1]/div[2]/div[2]/div[3]/span/table/tbody/tr[1]/td[11]"}
  SEARCH_FIELD = {css: "input[id$='SearchInput']"}
  SEARCH_BTN = {css: "input[value='Search']"}
  RESET_BTN = {css: "input[value='Reset']"}
  GRID_OPTIONS_DROPDOWN = {xpath: "/html/body/form/div[3]/div[3]/div[1]/div[2]/div[2]/div[2]/div[2]/div[2]/div/div[1]/div/span"}
    EXPORT_CUSTOMERS = {css: "a[id$='ExportGridLink']"}
    SHOW_INACTIVES = {css: "input[id$='ShowInactivesCheckbox']"}
  GRID_TOTAL = {class: "Counter_Message"}
  ID_COLUMN = {css: "input[id$='wtCustomerTable_ctl02_wtIdSearchTextInput']"}
  NAME_COLUMN = {css: "input[id$='wtCustomerTable_ctl02_wtNameSearchTextInput']"}
  TOP_BILLING_CONTACT = {css: "a[id$='wtCustomerTable_ctl03_wtBillingContactLink']"}
  TOP_SITE_CONTACT = {css: "a[id$='wtCustomerTable_ctl03_wtSiteContactLink']"}

  #CSS Selectors: Popup
  POPUP = {css: "div[class='os-internal-ui-widget-overlay']"}
  NAME_FIELD = {css: "input[id$='Customer_Name']"}
  DBA_NAME_FIELD = {css: "input[id$='Customer_DBAName']"}
  LOCATION_DROPDOWN = {css: "select[id$='LocationCombobox']"}
  TIME_ZONE_DROPDOWN = {css: "select[id$='wtTimeZone']"}
  TYPE_DROPDOWN = {css: "select[id$='CustomerTypeCombobox']"}
  PATROL_TYPE_DROPDOWN = {css: "select[id$='CustomerPatrolTypeCombobox']"}
  STAGE_DROPDOWN = {css: "select[id$='CustomerStageCombobox']"}
  SOURCE_DROPDOWN = {css: "select[id$='CustomerSourceCombobox']"}
  PHONE_FIELD = {css: "input[id$='Customer_Phone']"}
  EMAIL_FIELD = {css: "input[id$='wtEmailInput']"}
  WEBSITE_FIELD = {css: "input[id$='Customer_Website']"}
  PONUMBER_FIELD = {css: "input[id$='PONumber']"}
  ACCOUNT_EXECUTIVE_DROPDOWN = {css: "select[id$='Customer_AccountExecutive']"}
  SPECIAL_INSTRUCTIONS_FIELD = {css: "textarea[id$='Customer_SpecialInstructions']"}
  PATROL_INSTRUCTIONS_FIELD = {css: "textarea[id$='Customer_PatrolInstructions']"}
  PRICE_AGREEMENT_FIELD = {css: "input[id$='PriceAgreementInput']"}
  IS_SUBCUSTOMER_CHECKBOX = {css: "input[id$='wtMainContent_wt735']"}
  DO_NOT_SERVICE_CHECKBOX = {css: "input[id$='wtMainContent_wt914']"}
  UNDER_CONTRACT_CHECKBOX = {css: "input[id$='wtIsUnderContract']"}
  CANCEL_BTN = {css: "input[value='Cancel']"}
  ACTIONS_BTN = {xpath: "/html/body/form/div[3]/div[1]/div[3]/div[3]/div[1]/div/div[1]/div[2]/span"}
  SAVE_BTN = {css: "input[value='Save']"}
  SAVE_AND_CLOSE_BTN = {css: "input[value='Save and Close']"}

  #CSS Selectors: Popup (Contact Info Tab)
  CONTACT_INFO_TAB = {css: "a[id$='block_a_0']"}
  BILL_NAME = {css: "input[id$='Customer_BillName']"}
  BILL_STREET = {css: "textarea[id$='Customer_BillingStreet']"}
  BILL_CITY = {css: "input[id$='Customer_BillCity']"}
  BILL_STATE = {css: "input[id$='Customer_BillState']"}
  BILL_ZIP = {css: "input[id$='Customer_BillPostalCode']"}
  BILL_COUNTRY = {css: "input[id$='Customer_BillCountry']"}
  SITE_NAME = {css: "input[id$='Customer_SiteName']"}
  SITE_STREET = {css: "textarea[id$='Customer_SiteAddress']"}
  SITE_CITY = {css: "input[id$='Customer_SiteCity']"}
  SITE_STATE = {css: "input[id$='Customer_SiteState']"}
  SITE_ZIP = {css: "input[id$='Customer_SitePostalCode']"}
  SITE_COUNTRY = {css: "input[id$='Customer_SiteCountry']"}
  COPY_TO_SITE_OPTN = {css: "img[id$='wtCopyToSite']"}
  COPY_TO_BILLING_OPTN = {css: "img[id$='wtCopyToBilling']"}

  #CSS Selectors: Popup (Billing and Tax Tab)
  BILLING_AND_TAX_TAB = {css: "a[id$='block_a_1']"}
  PAYMENT_DROPDOWN = {css: "select[id$='Customer_PaymentMethod']"}
  DELIVERY_DROPDOWN = {css: "select[id$='Customer_DeliveryMethod']"}
  TAXABLE_CHECKBOX = {css: "input[id$='Customer_IsTaxable']"}
  DEFAULT_TAX_CODE_DROPDOWN = {css: "select[id$='Customer_TaxRate']"}
  TERMS_DROPDOWN = {css: "select[id$='Customer_TermId']"}
  NTE_FIELD = {css: "input[id$='Customer_NotToExceed']"}
  TAX_EXEMPT_CODE_FIELD = {css: "input[id$='Customer_TaxExemptCode']"}

  #CSS Selectors: Popup (Activities Tab)
  ACTIVITIES_TAB = {css: "a[id$='block_a_2']"}
  SEARCH_ACTIVITY = {css: "input[id$='ActivitiesSearchInput']"}
  TOP_ACTIVITY = {css: "a[id$='ctl03_wtActivityIdLink']"}
  TOP_ACTIVITY_DESCRIPTION = {xpath: "/html/body/form/div[3]/div[1]/div[2]/div[3]/div/div[3]/table/tbody/tr/td[6]"}
  CUSTOMER_ACTIVITY_SEARCH_BTN = {css: "input[id$='CustomerSearchActivities']"}
  CUSTOMER_ACTIVITY_RESET_BTN = {css: "input[id$='CustomerResetActivities']"}

  #CSS Selectors: Popup (Patrols Tab)
  PATROLS_TAB = {css: "a[id$='block_a_3']"}
  SEARCH_PATROL = {css: "input[id$='PatrolSearchInput']"}
  TOP_PATROL_REFNUMBER = {css: "a[id$='PatrolTable_ctl03_wtPatrolIdLink']"}
  TOP_PATROL_NAME = {xpath: "/html/body/form/div[3]/div[1]/div[3]/div[4]/div/div[3]/table/tbody/tr[1]/td[2]"}
  CUSTOMER_PATROL_SEARCH_BTN = {css: "input[id$='CustomerSearchPatrols']"}
  CUSTOMER_PATROL_RESET_BTN = {css: "input[id$='CustomerResetPatrols']"}

  #CSS Selectors: Popup (Estimates Tab)
  ESTIMATES_TAB = {css: "a[id$='block_a_4']"}
  SEARCH_ESTIMATE = {css: "input[id$='wtPatrolSearchInput2']"}
  TOP_ESTIMATE_REFNUMBER = {css: "a[id$='EstimateTable_ctl03_wtEstimateIdLink']"}
  TOP_ESTIMATE_NAME = {xpath: "/html/body/form/div[3]/div[1]/div[3]/div[5]/div/div[3]/table/tbody/tr[1]/td[2]"}
  CUSTOMER_ESTIMATE_SEARCH_BTN = {css: "input[id$='CustomerSearchEstimates']"}
  CUSTOMER_ESTIMATE_RESET_BTN = {css: "input[id$='CustomerResetEstimates']"}

  #CSS Selectors: Popup (Jobs Tab)
  JOBS_TAB = {css: "a[id$='block_a_5']"}
  SEARCH_JOB = {css: "input[id$='wtJobSearchInput']"}
  TOP_JOB_REFNUMBER = {css: "a[id$='JobTable_ctl03_wtJobIdLink']"}
  TOP_JOB_NAME = {xpath: "/html/body/form/div[3]/div[1]/div[3]/div[6]/div/div[3]/table/tbody/tr[1]/td[2]"}
  CUSTOMER_JOB_SEARCH_BTN = {css: "input[id$='CustomerSearchJobs']"}
  CUSTOMER_JOB_RESET_BTN = {css: "input[id$='CustomerResetJobs']"}

  #CSS Selectors: Popup (Invoices Tab)
  INVOICES_TAB = {css: "a[id$='block_a_6']"}
  SEARCH_INVOICE = {css: "input[id$='wtInvoiceSearchInput']"}
  TOP_INVOICE_REFNUMBER = {css: "a[id$='InvoiceTable_ctl03_wtInvoiceIdLink']"}
  TOP_INVOICE_JOB_NAME = {css: "a[id$='wtInvoiceJobNameLink']"}
  CUSTOMER_INVOICE_SEARCH_BTN = {css: "input[id$='CustomerSearchInvoices']"}
  CUSTOMER_INVOICE_RESET_BTN = {css: "input[id$='CustomerResetInvoices']"}

  #CSS Selectors: Popup (Pricing Tab)
  PRICING_TAB = {css: "a[id$='block_a_7']"}
  SEARCH_PRICE = {css: "input[id$='wtInvoiceSearchInput2']"}
  CUSTOMER_PRICE_SEARCH_BTN = {css: "input[id$='CustomerSearchPrices']"}
  CUSTOMER_PRICE_RESET_BTN = {css: "input[id$='CustomerResetPrices']"}

  #CSS Selectors: Popup (Contracts Tab)
  CONTRACTS_TAB = {css: "a[id$='block_a_8']"}
  SEARCH_CONTRACT = {css: "input[id$='wtContractSearchInput']"}
  TOP_CONTRACT_NAME = {xpath: "/html/body/form/div[3]/div[1]/div[2]/div[9]/div/div[3]/table/tbody/tr[1]/td[2]"}
  CUSTOMER_CONTRACT_SEARCH_BTN = {css: "input[id$='CustomerSearchContracts']"}
  CUSTOMER_CONTRACT_RESET_BTN = {css: "input[id$='CustomerResetContracts']"}

  #CSS Selectors: Popup (Routes Tab)
  ROUTES_TAB = {css: "a[id$='block_a_9']"}

  #CSS Selectors: Popup (Assets Tab)
  ASSETS_TAB = {css: "a[id$='block_a_10']"}

  #CSS Selectors: Frame Anchors
  FRAME = {css: "iframe[tabindex='0']"}
  ACTIVITY_REASON_DROPDOWN = {css: "select[id$='ActivityReasonCombobox']"}
  PATROL_NAME_FIELD = {css: "input[id$='Patrol_SubmittedName'"}
  ESTIMATE_NAME_FIELD = {css: "input[id$='Estimate_Name']"}
  JOB_NAME_FIELD = {css: "input[id$='Job_Name']"}
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
  def open_customers()
    i = 0
    loopcount = 5
    loop do
      i += 1
      begin
      wait = Selenium::WebDriver::Wait.new(:timeout => 10)
      wait.until {@driver.find_element(CUSTOMERS_OPTN).displayed?}
      rescue Selenium::WebDriver::Error::StaleElementReferenceError
        false
      end
      if @driver.find_element(CUSTOMERS_OPTN).displayed? == true
        break
      end
      if i == loopcount
        raise StaleError
      end
    end
    customers_button = @driver.find_element(CUSTOMERS_OPTN)
    customers_button.click
    wait2 = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait2.until {@driver.find_element(class: "Counter_Message").text != "0 records" }
  end

  def create_customer()
    i = 0
    loopcount = 5
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait.until {@driver.find_element(CREATE_CUSTOMER_BTN).displayed?}
    create_customer_button = @driver.find_element(CREATE_CUSTOMER_BTN)
    create_customer_button.click
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
    top_record = @driver.find_element(TOP_CUSTOMER)
  end

  def top_refnumber()
    top_refnumber = @driver.find_element(TOP_REFNUMBER)
  end

  def top_stage()
    top_stage = @driver.find_element(TOP_STAGE)
  end

  def top_type()
    top_type = @driver.find_element(TOP_TYPE)
  end

  def top_patroltype()
    top_patroltype = @driver.find_element(TOP_PATROL_TYPE)
  end

  def top_billing_contact()
    top_contact = @driver.find_element(TOP_BILLING_CONTACT)
  end

  def top_site_contact()
    top_contact = @driver.find_element(TOP_SITE_CONTACT)
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
    wait.until {@driver.find_element(TOP_CUSTOMER_ACTIONS).displayed?}
    top_actions = @driver.find_element(TOP_CUSTOMER_ACTIONS)
    top_actions.click
  end

  def actions_viewcustomer()
    #Only accessible in grid actions
    i = 0
    loopcount = 5
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(ACTIONS_VIEWCUSTOMER).displayed?}
    top_view = @driver.find_element(ACTIONS_VIEWCUSTOMER)
    top_view.click
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

  def actions_createestimate()
    i = 0
    loopcount = 5
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(ACTIONS_CREATEESTIMATE).displayed?}
    top_createestimate = @driver.find_element(ACTIONS_CREATEESTIMATE)
    top_createestimate.click
    loop do
      i += 1
      @driver.switch_to.frame(1)
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

  def actions_createinvoice()
    i = 0
    loopcount = 5
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(ACTIONS_CREATEINVOICE).displayed?}
    top_createinvoice = @driver.find_element(ACTIONS_CREATEINVOICE)
    top_createinvoice.click
    loop do
      i += 1
      @driver.switch_to.frame(1)
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

  def actions_duplicatecustomer()
    i = 0
    loopcount = 5
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(ACTIONS_DUPLICATECUSTOMER).displayed?}
    top_duplicate = @driver.find_element(ACTIONS_DUPLICATECUSTOMER)
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

  def actions_recommendroute()
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(ACTIONS_RECOMMENDROUTE).displayed?}
    top_recommend = @driver.find_element(ACTIONS_RECOMMENDROUTE)
    top_recommend.click
  end

  def gridactions_documents()
    #Only available in the grid actions menu
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

  def search_customer(searchname)
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(SEARCH_FIELD).displayed?}
    customer_search = @driver.find_element(SEARCH_FIELD)
    customer_search.send_keys(searchname)
    wait2 = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait2.until {@driver.find_element(SEARCH_BTN).displayed?}
    search_confirm = @driver.find_element(SEARCH_BTN)
    search_confirm.click
    wait3 = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait3.until {@driver.find_element(TOP_CUSTOMER).text.downcase.include?(searchname.downcase)}
  end

  def search_customerid(searchname)
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
    customer_search = @driver.find_element(ID_COLUMN)
    customer_search.send_keys(searchname)
    @driver.action.send_keys(:enter).perform
    wait2 = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait2.until {@driver.find_element(TOP_REFNUMBER).text.include?(searchname)}
  end

  def search_customerid_field()
    field = @driver.find_element(ID_COLUMN)
  end

  def search_customername(searchname)
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
    customer_search = @driver.find_element(NAME_COLUMN)
    customer_search.send_keys(searchname)
    @driver.action.send_keys(:enter).perform
    wait2 = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait2.until {@driver.find_element(TOP_CUSTOMER).text.downcase.include?(searchname.downcase)}
  end

  def search_customername_field()
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
    wait.until {@driver.find_element(EXPORT_CUSTOMERS).displayed?}
    export_customers = @driver.find_element(EXPORT_CUSTOMERS)
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
    customers_records = @driver.find_element(class: "Counter_Message")
    customers_count = customers_records.text
    print "Customers: \n"
    print "%s \n" % customers_count
    print "Load Time: %s ms \n\n" % loadPerformance
  end

  #CSS Methods: Popup
  def name(customername)
    customer_name = @driver.find_element(NAME_FIELD)
    customer_name.send_keys(customername)
  end

  def dba_name(dbaname)
    dba_name = @driver.find_element(DBA_NAME_FIELD)
    dba_name.send_keys(dbaname)
  end

  def location(locationselect)
    dropdown_list = @driver.find_element(LOCATION_DROPDOWN)
    options = dropdown_list.find_elements(tag_name: 'option')
    options.each {|option| option.click if option.text == (locationselect)}
  end

  def time_zone(timezone)
    dropdown_list = @driver.find_element(TIME_ZONE_DROPDOWN)
    options = dropdown_list.find_elements(tag_name: 'option')
    options.each {|option| option.click if option.text == (timezone)}
  end

  def type(typeselect)
    dropdown_list = @driver.find_element(TYPE_DROPDOWN)
    options = dropdown_list.find_elements(tag_name: 'option')
    options.each {|option| option.click if option.text == (typeselect)}
  end

  def patrol_type(patroltype)
    dropdown_list = @driver.find_element(PATROL_TYPE_DROPDOWN)
    options = dropdown_list.find_elements(tag_name: 'option')
    options.each {|option| option.click if option.text == (patroltype)}
  end

  def stage(customerstage)
    dropdown_list = @driver.find_element(STAGE_DROPDOWN)
    options = dropdown_list.find_elements(tag_name: 'option')
    options.each {|option| option.click if option.text == (customerstage)}
  end

  def source(customersource)
    dropdown_list = @driver.find_element(SOURCE_DROPDOWN)
    options = dropdown_list.find_elements(tag_name: 'option')
    options.each {|option| option.click if option.text == (customersource)}
  end

  def phone(customerphone)
    customer_phone = @driver.find_element(PHONE_FIELD)
    customer_phone.send_keys(customerphone)
  end

  def email(customeremail)
    customer_email = @driver.find_element(EMAIL_FIELD)
    customer_email.send_keys(customeremail)
  end

  def website(customerwebsite)
    customer_website = @driver.find_element(WEBSITE_FIELD)
    customer_website.send_keys(customerwebsite)
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

  def special_instructions(specialinstructions)
    special_instructions = @driver.find_element(SPECIAL_INSTRUCTIONS_FIELD)
    special_instructions.send_keys(specialinstructions)
  end

  def patrol_instructions(patrolinstructions)
    patrol_instructions = @driver.find_element(PATROL_INSTRUCTIONS_FIELD)
    patrol_instructions.send_keys(patrolinstructions)
  end

  def price_agreement(priceagreement)
    price_agreement = @driver.find_element(PRICE_AGREEMENT_FIELD)
    price_agreement.send_keys(priceagreement)
  end

  def is_subcustomer()
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(IS_SUBCUSTOMER_CHECKBOX).displayed?}
    checkbox = @driver.find_element(IS_SUBCUSTOMER_CHECKBOX)
    checkbos.click
  end

  def do_not_service()
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(DO_NOT_SERVICE_CHECKBOX).displayed?}
    checkbox = @driver.find_element(DO_NOT_SERVICE_CHECKBOX)
    checkbos.click
  end

  def under_contract()
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(UNDER_CONTRACT_CHECKBOX).displayed?}
    checkbox = @driver.find_element(UNDER_CONTRACT_CHECKBOX)
    checkbos.click
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

  #Class Modifiers: Popup (Contact Info Tab)
  def contact_info_tab()
    tab_name = @driver.find_element(CONTACT_INFO_TAB)
    tab_name.click
  end

  def bill_name(billname)
    input_field = @driver.find_element(BILL_NAME)
    input_field.send_keys(billname)
  end

  def bill_street(billstreet)
    input_field = @driver.find_element(BILL_STREET)
    input_field.send_keys(billstreet)
  end

  def bill_city(billcity)
    input_field = @driver.find_element(BILL_CITY)
    input_field.send_keys(billcity)
  end

  def bill_state(billstate)
    input_field = @driver.find_element(BILL_STATE)
    input_field.send_keys(billstate)
  end

  def bill_zip(billzip)
    input_field = @driver.find_element(BILL_ZIP)
    input_field.send_keys(billzip)
  end

  def bill_country(billcountry)
    input_field = @driver.find_element(BILL_COUNTRY)
    input_field.send_keys(billcountry)
  end

  def bill_contact(billcontact)
    input_field = @driver.find_element(BILL_CONTACT)
    input_field.send_keys(billcontact)
    sleep(1)
    driver.action.send_keys(:enter).perform
    sleep(1)
  end

  def site_name(sitename)
    input_field = @driver.find_element(SITE_NAME)
    input_field.send_keys(sitename)
  end

  #Used in databuffer wait action
  def site_name_verify()
    input_field = @driver.find_element(SITE_NAME)
  end

  def site_street(sitestreet)
    input_field = @driver.find_element(SITE_STREET)
    input_field.send_keys(sitestreet)
  end

  def site_city(sitecity)
    input_field = @driver.find_element(SITE_CITY)
    input_field.send_keys(sitecity)
  end

  def site_state(sitestate)
    input_field = @driver.find_element(SITE_STATE)
    input_field.send_keys(sitestate)
  end

  def site_zip(sitezip)
    input_field = @driver.find_element(SITE_ZIP)
    input_field.send_keys(sitezip)
  end

  def site_country(sitecountry)
    input_field = @driver.find_element(SITE_COUNTRY)
    input_field.send_keys(sitecountry)
  end

  def site_contact(sitecontact)
    input_field = @driver.find_element(SITE_CONTACT)
    input_field.send_keys(sitecontact)
    sleep(1)
    driver.action.send_keys(:enter).perform
    sleep(1)
  end

  def copy_to_site()
    copy_option = @driver.find_element(COPY_TO_SITE_OPTN)
    copy_option.click
  end

  def copy_to_billing()
    copy_option = @driver.find_element(COPY_TO_BILLING_OPTN)
    copy_option.click
  end

  #CSS Methods: Popup (Billing and Tax Tab)
  def billing_tab()
    tab_name = @driver.find_element(BILLING_AND_TAX_TAB)
    tab_name.click
  end

  def payment(customerpayment)
    dropdown_list = @driver.find_element(PAYMENT_DROPDOWN)
    options = dropdown_list.find_elements(tag_name: 'option')
    options.each {|option| option.click if option.text == (customerpayment)}
  end

  def delivery(customerdelivery)
    dropdown_list = @driver.find_element(DELIVERY_DROPDOWN)
    options = dropdown_list.find_elements(tag_name: 'option')
    options.each {|option| option.click if option.text == (customerdelivery)}
  end

  def taxable()
    checkbox = @driver.find_element(TAXABLE_CHECKBOX)
    checkbox.click()
  end

  def default_tax(defaulttax)
    dropdown_list = @driver.find_element(DEFAULT_TAX_CODE_DROPDOWN)
    options = dropdown_list.find_elements(tag_name: 'option')
    options.each {|option| option.click if option.text == (defaulttax)}
  end

  def terms(customerterms)
    dropdown_list = @driver.find_element(TERMS_DROPDOWN)
    options = dropdown_list.find_elements(tag_name: 'option')
    options.each {|option| option.click if option.text == (customerterms)}
  end

  def nte(customernte)
    nte_field = @driver.find_element(NTE_FIELD)
    nte_field.send_keys(customernte)
  end

  def tax_exempt(customertaxexempt)
    nte_field = @driver.find_element(TAX_EXEMPT_CODE_FIELD)
    nte_field.send_keys(customertaxexempt)
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
    wait2.until {@driver.find_element(CUSTOMER_ACTIVITY_SEARCH_BTN).displayed?}
    search_confirm = @driver.find_element(CUSTOMER_ACTIVITY_SEARCH_BTN)
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

  #CSS Methods: Popup (Patrols Tab)
  def patrols_tab()
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(PATROLS_TAB).displayed?}
    patrols_tab = @driver.find_element(PATROLS_TAB)
    patrols_tab.click
  end

  def search_patrol(searchpatrol)
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(SEARCH_PATROL).displayed?}
    patrol_search = @driver.find_element(SEARCH_PATROL)
    patrol_search.send_keys(searchpatrol)
    wait2 = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait2.until {@driver.find_element(CUSTOMER_PATROL_SEARCH_BTN).displayed?}
    search_confirm = @driver.find_element(CUSTOMER_PATROL_SEARCH_BTN)
    search_confirm.click
    wait3 = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait3.until {@driver.find_element(TOP_PATROL_NAME).downcase.include?(searchpatrol.downcase)}
  end

  def top_patrol()
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(TOP_PATROL_REFNUMBER).displayed?}
    top_refnumber = @driver.find_element(TOP_PATROL_REFNUMBER)
    top_refnumber.click
    loop do
      i += 1
      @driver.switch_to.frame(0)
      begin
        wait2 = Selenium::WebDriver::Wait.new(:timeout => 2)
        wait2.until {@driver.find_element(PATROL_NAME_FIELD).displayed?}
      rescue Selenium::WebDriver::Error::TimeOutError
        false
      end
      if
        begin
          @driver.find_element(PATROL_NAME_FIELD).displayed? == true
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

  def top_patrolname()
    top_patrolname = @driver.find_element(TOP_PATROL_NAME)
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
    wait2.until {@driver.find_element(CUSTOMER_ESTIMATE_SEARCH_BTN).displayed?}
    search_confirm = @driver.find_element(CUSTOMER_ESTIMATE_SEARCH_BTN)
    search_confirm.click
    wait3 = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait3.until {@driver.find_element(TOP_ESTIMATE_NAME).downcase.include?(searchestimate.downcase)}
  end

  def top_estimate()
    i = 0
    loopcount = 5
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(TOP_ESTIMATE_REFNUMBER).displayed?}
    top_refnumber = @driver.find_element(TOP_ESTIMATE_REFNUMBER)
    top_refnumber.click
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

  def top_estimatename()
    top_estimatename = @driver.find_element(TOP_ESTIMATE_NAME)
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
    wait2.until {@driver.find_element(CUSTOMER_JOB_SEARCH_BTN).displayed?}
    search_confirm = @driver.find_element(CUSTOMER_JOB_SEARCH_BTN)
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

  #CSS Methods: Popup (Invoices Tab)
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
    wait2.until {@driver.find_element(SEARCH_BTN).displayed?}
    search_confirm = @driver.find_element(SEARCH_BTN)
    search_confirm.click
    wait3 = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait3.until {@driver.find_element(TOP_INVOICE_JOB_NAME).downcase.include?(searchinvoice.downcase)}
  end

  def top_invoice()
    i = 0
    loopcount = 5
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(TOP_INVOICE_REFNUMBER).displayed?}
    top_refnumber = @driver.find_element(TOP_INVOICE_REFNUMBER)
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

  def top_invoicename()
    top_invoicename = @driver.find_element(TOP_INVOICE_JOB_NAME)
  end

  #CSS Methods: Popup (Pricing Tab)
  def pricing_tab()
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(PRICING_TAB).displayed?}
    pricing_tab = @driver.find_element(PRICING_TAB)
    pricing_tab.click
  end

  def search_price(searchprice)
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(SEARCH_PRICE).displayed?}
    price_search = @driver.find_element(SEARCH_PRICE)
    price_search.send_keys(searchprice)
    wait2 = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait2.until {@driver.find_element(SEARCH_BTN).displayed?}
    search_confirm = @driver.find_element(SEARCH_BTN)
    search_confirm.click
  end

  def top_contractname()
    top_contractname = @driver.find_element(TOP_CONTRACT_NAME)
  end

  #CSS Methods: Popup (Contracts Tab)
  def contracts_tab()
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(CONTRACTS_TAB).displayed?}
    contracts_tab = @driver.find_element(CONTRACTS_TAB)
    contracts_tab.click
  end

  def search_contract(searchcontract)
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(SEARCH_CONTRACT).displayed?}
    contract_search = @driver.find_element(SEARCH_CONTRACT)
    contract_search.send_keys(searchcontract)
    wait2 = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait2.until {@driver.find_element(SEARCH_BTN).displayed?}
    search_confirm = @driver.find_element(SEARCH_BTN)
    search_confirm.click
    wait3 = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait3.until {@driver.find_element(TOP_CONTRACT_NAME).downcase.include?(searchcontract.downcase)}
  end

  def top_contractname()
    top_contractname = @driver.find_element(TOP_CONTRACT_NAME)
  end

  #CSS Methods: Popup (Routes Tab)
  def routes_tab()
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(ROUTES_TAB).displayed?}
    routes_tab = @driver.find_element(ROUTES_TAB)
    routes_tab.click
  end

  #CSS Methods: Popup (Assets Tab)
  def assets_tab()
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(ASSETS_TAB).displayed?}
    assets_tab = @driver.find_element(ASSETS_TAB)
    assets_tab.click
  end

end
