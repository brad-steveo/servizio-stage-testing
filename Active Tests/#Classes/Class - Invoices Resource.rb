class InvoicesResource

  #CSS Selectors: Grid
  INVOICES_OPTN = {css: "a[id$='Sidebar_Invoices']"}
  CREATE_INVOICE_BTN = {css: "a[id$='AddInvoiceLink'"}
  JOB_SEARCH_FIELD = {css: "input[id$=JobInput]"}
  JOB_NEXT_BTN = {css: "input[value='Next']"}
  JOB_CANCEL_BTN = {css: "input[value='Cancel']"}
  TOP_INVOICE = {css: "a[id$='InvoiceTable_ctl03_wtCustomerDisplayNameLink']"}
    TOP_INVOICE_ACTIONS = {xpath: "/html/body/form/div[3]/div[3]/div[1]/div[2]/div[1]/div[3]/span/table/tbody/tr[1]/td[1]/div/div/div[1]/div[1]/span"}
      ACTIONS_VIEWINVOICE = {css: "a[id$='InvoiceViewLink']"}
      ACTIONS_CREATEACTIVITY = {css: "a[id$='CreateActivityLink']"}
      ACTIONS_DOCUMENTS = {css: "a[id$='DocumentsLink']"}
      ACTIONS_PRINTEMAIL = {css: "a[id$='PrintEmailLink']"}
  TOP_JOBNAME = {css: "a[id$='InvoiceTable_ctl03_wtJobNameLink']"}
  TOP_REFNUMBER = {css: "a[id$='InvoiceTable_ctl03_wtInvoiceIdLink']"}
  TOP_QBID = {xpath: "/html/body/form/div[3]/div[3]/div[1]/div[2]/div[1]/div[3]/span/table/tbody/tr[1]/td[30]/div"}
  TOP_NSID = {xpath: "/html/body/form/div[3]/div[3]/div[1]/div[2]/div[1]/div[3]/span/table/tbody/tr[1]/td[30]"}
  TOP_PONUMBER = {xpath: "/html/body/form/div[3]/div[3]/div[1]/div[2]/div[1]/div[3]/span/table/tbody/tr[1]/td[26]"}
  SEARCH_FIELD = {css: "input[id$='SearchInput']"}
  SEARCH_BTN = {css: "input[value='Search']"}
  RESET_BTN = {css: "input[value='Reset']"}
  GRID_OPTIONS_DROPDOWN = {xpath: "/html/body/form/div[3]/div[3]/div[1]/div[2]/div[1]/div[2]/div[2]/div[2]/div/div[1]/div/span"}
    EXPORT_INVOICES = {css: "a[id$='ExportGridLink']"}
    SHOW_INACTIVES = {css: "input[id$='ShowInactivesCheckbox']"}
  GRID_TOTAL = {class: "Counter_Message"}
  ID_COLUMN = {css: "input[id$='wtIdSearchTextInput']"}
  NAME_COLUMN = {css: "input[id$='wtCustomerSearchTextInput']"}

  #CSS Selectors: Popup
  INVOICE_DATE_FIELD = {css: "input[id$='Invoice_TxnDate']"}
  TERMS_DROPDOWN = {css: "select[id$='Invoice_SalesTermId']"}
  DUE_DATE_FIELD = {css: "input[id$='Invoice_DueDate']"}
  LOCATION_DROPDOWN = {css: "select[id$='LocationCombobox']"}
  LINE_OF_BUSINESS_DROPDOWN = {css: "select[id$='Invoice_ClassId']"}
  CLASS_DROPDOWN = {css: "select[id$='Invoice_ClassId']"}
  PONUMBER_FIELD = {css: "input[id$='Invoice_PONumber']"}
  ACCOUNT_EXECUTIVE_DROPDOWN = {css: "select[id$='Invoice_AccountExecutive']"}
  COMMISSION_SCHEDULE_DROPDOWN = {css: "select[id$='Invoice_CommissionSchedule']"}
  CANCEL_BTN = {css: "input[value='Cancel']"}
  ACTIONS_BTN = {xpath: "/html/body/form/div[3]/div[1]/div[3]/div[3]/div/div/div[1]/div[2]/span"}
    ACTIONS_VIEWJOB = {css: "a[id$='ViewJobLink']"}
    ACTIONS_VIEWCUSTOMER = {css: "a[id$='ViewCustomerLink']"}
    ACTIONS_PUSHTOQBO = {css: "a[id$='SyncToQBOLink']"}
    ACTIONS_PUSHTONS = {css: "a[id$='SyncToNS']"}
      PUSH_CONFIRM = {css: "a[class='conf-dialog-button blue']"}
    ACTIONS_PULLFROMQBO = {css: "a[id$='PullFromQBOLink']"}
    ACTIONS_VIEWINQBO = {css: "a[id$='ViewInQBOLink']"}
  SAVE_BTN = {css: "input[value='Save']"}
  SAVE_AND_CLOSE_BTN = {css: "input[value='Save and Close']"}

  #CSS Selectors: Popup (Lines Tab)
  LINES_TAB = {css: "a[id$='block_a_0']"}
    LINE1_SERVICE_DATE_SPAN = {css: "span[id$='ctl03_wtInvoiceLine_ServiceDate_ciw']"}
    LINE1_ITEM_SPAN = {css: "span[id$='ctl03_wtInvoiceLine_Item_ciw']"}
    LINE1_SERVICE_DATE = {css: "input[id$='ctl03_wtInvoiceLine_ServiceDate']"}
    LINE1_ITEM = {css: "input[id$='ctl03_wtInvoiceLine_Item']"}
    LINE1_DESCRIPTION = {css: "span[id$='InvoiceLine_Description_ciw']"}
    LINE1_DESCRIPTION_TEXTAREA = {css: "textarea[id$='InvoiceLineTable_ctl03_wtInvoiceLine_Description']"}
    LINE1_DELETE = {xpath: "/html/body/form/div[3]/div[1]/div[2]/div[1]/div[1]/span[2]/table/tbody/tr[1]/td[13]/div/a/span"}
  ADD_LINES = {css: "input[id$='wtAddLines']"}
  CLEAR_LINES = {css: "input[id$='wtClearAllLines']"}
  SUBTOTAL = {css: "div[id$='SubtotalContainer']"}
  TAX_DROPDOWN = {css: "select[id$='wtJob_TaxCode']"}
  TAXTOTAL = {css: "input[id$='wtTotalTax']"}
  TOTAL = {css: "div[id$='TotalContainer']"}

  #CSS Selectors: Popup (Customer Contacts Tab)
  CUSTOMER_CONTACTS_TAB = {css: "a[id$='block_a_1']"}
  #Use Contacts Class

  #CSS Selectors: Popup (Notes Tab)
  NOTES_TAB = {css: "a[id$='block_a_2']"}
  CUSTOMER_MEMO_FIELD = {css: "textarea[id$='wtColumn1_wtCustomerMemo']"}
  PRIVATE_NOTES_FIELD = {css: "textarea[id$='wtColumn2_wtPrivateNotes']"}

  #CSS Selectors: Popup (Activities Tab)
  ACTIVITIES_TAB = {css: "a[id$='block_a_3']"}
  SEARCH_ACTIVITY = {css: "input[id$='ActivitiesSearchInput']"}
  TOP_ACTIVITY = {css: "a[id$='ctl03_wtActivityIdLink']"}
  TOP_ACTIVITY_DESCRIPTION = {xpath: "/html/body/form/div[3]/div[1]/div[2]/div[4]/div/div[3]/table/tbody/tr/td[5]"}
  #SEARCH_BTN
  #RESET_BTN

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

  #CSS Modifiers: Grid
  def open_invoices()
    i = 0
    loopcount = 5
    loop do
      i += 1
      begin
      wait = Selenium::WebDriver::Wait.new(:timeout => 10)
      wait.until {@driver.find_element(INVOICES_OPTN).displayed?}
      rescue Selenium::WebDriver::Error::StaleElementReferenceError
        false
      end
      if @driver.find_element(INVOICES_OPTN).displayed? == true
        break
      end
      if i == loopcount
        raise StaleError
      end
    end
    invoices_button = @driver.find_element(INVOICES_OPTN)
    invoices_button.click
    wait2 = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait2.until {@driver.find_element(class: "Counter_Message").text != "0 records" }
  end

  def create_invoice()
    def wait_for()
      Selenium::WebDriver::Wait.new(:timeout => 5).until {yield}
    end
    wait_for {@driver.find_element(CREATE_INVOICE_BTN).displayed?}
    create_invoice_button = @driver.find_element(CREATE_INVOICE_BTN)
    create_invoice_button.click
    sleep(3)
    def wait_for2()
      Selenium::WebDriver::Wait.new(:timeout => 10).until { yield }
    end
    wait_for2 {@driver.find_element(id:"os-internal-ui-dialog-title-1").displayed?}
    sleep(2)
    @driver.switch_to.frame(0)
  end

  def select_job(selectjob)
    select_job = @driver.find_element(JOB_SEARCH_FIELD)
    select_job.send_keys(selectjob)
    sleep(1)
    @driver.action.send_keys(:enter).perform
    sleep(1)
    select_job_next = @driver.find_element(JOB_NEXT_BTN)
    select_job_next.click
    sleep(4)
    @driver.switch_to.frame(0)
  end

  def select_jobdev(selectjob)
    select_job = @driver.find_element(JOB_SEARCH_FIELD)
    select_job.send_keys(selectjob)
    sleep(1)
    @driver.action.send_keys(:enter).perform
    sleep(1)
    select_job_next = @driver.find_element(JOB_NEXT_BTN)
    select_job_next.click
    sleep(4)
    @driver.switch_to.frame(0)
  end

  def top()
    top_record = @driver.find_element(TOP_INVOICE)
  end

  def top_jobname()
    top_record = @driver.find_element(TOP_JOBNAME)
  end

  def top_refnumber()
    top_refnumber = @driver.find_element(TOP_REFNUMBER)
  end

  def top_qbid()
    top_qbid = @driver.find_element(TOP_QBID)
  end

  def top_nsid()
    top_qbid = @driver.find_element(TOP_NSID)
  end

  def top_ponumber()
    top_ponumber = @driver.find_element(TOP_PONUMBER)
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
    wait_for {@driver.find_element(TOP_INVOICE_ACTIONS).displayed?}
    top_actions = @driver.find_element(TOP_INVOICE_ACTIONS)
    top_actions.click
  end

  def actions_viewinvoice()
    #Only accessible in grid actions
    def wait_for()
      Selenium::WebDriver::Wait.new(:timeout => 5).until {yield}
    end
    wait_for {@driver.find_element(ACTIONS_VIEWINVOICE).displayed?}
    top_view = @driver.find_element(ACTIONS_VIEWINVOICE)
    top_view.click
    sleep(2)
    @driver.switch_to.frame(0)
  end

  def actions_createactivity()
    def wait_for()
      Selenium::WebDriver::Wait.new(:timeout => 5).until {yield}
    end
    wait_for {@driver.find_element(ACTIONS_CREATEACTIVITY).displayed?}
    top_createactivity = @driver.find_element(ACTIONS_CREATEACTIVITY)
    top_createactivity.click
    sleep(2)
    @driver.switch_to.frame(0)
  end

  def actions_documents()
    def wait_for()
      Selenium::WebDriver::Wait.new(:timeout => 5).until {yield}
    end
    wait_for {@driver.find_element(ACTIONS_DOCUMENTS).displayed?}
    top_documents = @driver.find_element(ACTIONS_DOCUMENTS)
    top_documents.click
    sleep(2)
    @driver.switch_to.frame(0)
  end

  def actions_printemail()
    def wait_for()
      Selenium::WebDriver::Wait.new(:timeout => 5).until {yield}
    end
    wait_for {@driver.find_element(ACTIONS_PRINTEMAIL).displayed?}
    top_printemail = @driver.find_element(ACTIONS_PRINTEMAIL)
    top_printemail.click
    sleep(2)
    @driver.switch_to.frame(0)
  end

  def search_invoice(searchname)
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(SEARCH_FIELD).displayed?}
    job_search = @driver.find_element(SEARCH_FIELD)
    job_search.send_keys(searchname)
    wait2 = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait2.until {@driver.find_element(SEARCH_BTN).displayed?}
    search_confirm = @driver.find_element(SEARCH_BTN)
    search_confirm.click
    wait3 = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait3.until {@driver.find_element(TOP_JOBNAME).text.downcase.include?(searchname.downcase)}
  end

  def search_invoiceid(searchname)
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(ID_COLUMN).displayed?}
    invoice_search = @driver.find_element(ID_COLUMN)
    invoice_search.send_keys(searchname)
    wait2 = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait2.until {@driver.find_element(TOP_REFNUMBER).text.include?(searchname)}
  end

  def search_invoiceid_field()
    field = @driver.find_element(ID_COLUMN)
  end

  def search_invoicename(searchname)
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(NAME_COLUMN).displayed?}
    invoice_search = @driver.find_element(NAME_COLUMN)
    invoice_search.send_keys(searchname)
    wait2 = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait2.until {@driver.find_element(TOP_INVOICE).text.downcase.include?(searchname.downcase)}
  end

  def search_invoicename_field()
    field = @driver.find_element(NAME_COLUMN)
  end

  def search_reset()
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(RESET_BTN).displayed?}
    search_reset = @driver.find_element(RESET_BTN)
    search_reset.click
  end

  def grid_options()
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(GRID_OPTIONS_DROPDOWN).displayed?}
    grid_options = @driver.find_element(GRID_OPTIONS_DROPDOWN)
    grid_options.click
  end

  def export_invoices()
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(EXPORT_INVOICES).displayed?}
    export_jobs = @driver.find_element(EXPORT_INVOICES)
    export_jobs.click
  end

  def show_inactives()
    def wait_for()
      Selenium::WebDriver::Wait.new(:timeout => 5).until {yield}
    end
    wait_for {@driver.find_element(SHOW_INACTIVES).displayed?}
    show_inactives = @driver.find_element(SHOW_INACTIVES)
    show_inactives.click
  end

  def qbo_verify()
    def wait_for
			Selenium::WebDriver::Wait.new(:timeout => 10).until { yield }
		end
		wait_for {@driver.find_element(TOP_QBID).displayed?}
		qbid = @driver.find_element(TOP_QBID)
		qbid_display = qbid.text
		expect(qbid_display).not_to eq("")
		print "QBID: %s" % qbid_display
  end

  def ns_verify()
    def wait_for
			Selenium::WebDriver::Wait.new(:timeout => 10).until { yield }
		end
		wait_for {@driver.find_element(TOP_NSID).displayed?}
		nsid = @driver.find_element(TOP_NSID)
		nsid_display = nsid.text
		expect(qbid_display).not_to eq("")
		print "NS Invoice Number: %s" % nsid_display
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
    invoices_records = @driver.find_element(GRID_TOTAL)
    invoices_count = invoices_records.text
    print "Invoices: \n"
    print "%s \n" % invoices_count
    print "Load Time: %s ms \n\n" % loadPerformance
  end

  #CSS Methods: Popup
  def invoice_date(invoicedate)
    def wait_for
			Selenium::WebDriver::Wait.new(:timeout => 10).until { yield }
		end
		wait_for {@driver.find_element(INVOICE_DATE_FIELD).displayed?}
    invoice_date = @driver.find_element(INVOICE_DATE_FIELD)
    invoice_date.send_keys(jobname)
  end

  def terms(termsselect)
    def wait_for
			Selenium::WebDriver::Wait.new(:timeout => 10).until { yield }
		end
		wait_for {@driver.find_element(TERMS_DROPDOWN).displayed?}
    dropdown_list = @driver.find_element(TERMS_DROPDOWN)
    options = dropdown_list.find_elements(tag_name: 'option')
    options.each {|option| option.click if option.text == (termsselect)}
  end

  def due_date(duedate)
    def wait_for
			Selenium::WebDriver::Wait.new(:timeout => 10).until { yield }
		end
		wait_for {@driver.find_element(DUE_DATE_FIELD).displayed?}
    duedate = @driver.find_element(DUE_DATE_FIELD)
    duedate.send_keys(duedate)
  end

  def location(locationselect)
    dropdown_list = @driver.find_element(LOCATION_DROPDOWN)
    options = dropdown_list.find_elements(tag_name: 'option')
    options.each {|option| option.click if option.text == (locationselect)}
  end

  def class(classselect)
    def wait_for
			Selenium::WebDriver::Wait.new(:timeout => 10).until { yield }
		end
		wait_for {@driver.find_element(CLASS_DROPDOWN).displayed?}
    dropdown_list = @driver.find_element(CLASS_DROPDOWN)
    options = dropdown_list.find_elements(tag_name: 'option')
    options.each {|option| option.click if option.text == (classselect)}
  end

  def line_business(lineofbusiness)
    def wait_for
			Selenium::WebDriver::Wait.new(:timeout => 10).until { yield }
		end
		wait_for {@driver.find_element(LINE_OF_BUSINESS_DROPDOWN).displayed?}
    dropdown_list = @driver.find_element(LINE_OF_BUSINESS_DROPDOWN)
    options = dropdown_list.find_elements(tag_name: 'option')
    options.each {|option| option.click if option.text == (lineofbusiness)}
  end

  def po_number(ponumber)
    def wait_for
			Selenium::WebDriver::Wait.new(:timeout => 10).until { yield }
		end
		wait_for {@driver.find_element(PONUMBER_FIELD).displayed?}
    po_number = @driver.find_element(PONUMBER_FIELD)
    po_number.send_keys(ponumber)
  end

  def account_executive(accountexecutive)
    def wait_for
			Selenium::WebDriver::Wait.new(:timeout => 10).until { yield }
		end
		wait_for {@driver.find_element(ACCOUNT_EXECUTIVE_DROPDOWN).displayed?}
    dropdown_list = @driver.find_element(ACCOUNT_EXECUTIVE_DROPDOWN)
    options = dropdown_list.find_elements(tag_name: 'option')
    options.each {|option| option.click if option.text == (accountexecutive)}
  end

  def commission(comissionschedule)
    def wait_for
			Selenium::WebDriver::Wait.new(:timeout => 10).until { yield }
		end
		wait_for {@driver.find_element(COMMISSION_SCHEDULE_DROPDOWN).displayed?}
    dropdown_list = @driver.find_element(COMMISSION_SCHEDULE_DROPDOWN)
    options = dropdown_list.find_elements(tag_name: 'option')
    options.each {|option| option.click if option.text == (comissionschedule)}
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

  def actions_viewjob()
    #Only accessible in popup actions
    def wait_for()
      Selenium::WebDriver::Wait.new(:timeout => 5).until {yield}
    end
    wait_for {@driver.find_element(ACTIONS_VIEWJOB).displayed?}
    viewjob = @driver.find_element(ACTIONS_VIEWJOB)
    viewjob.click
    sleep(2)
    @driver.switch_to.frame(0)
  end

  def actions_viewcustomer()
    #Only accessible in popup actions
    def wait_for()
      Selenium::WebDriver::Wait.new(:timeout => 5).until {yield}
    end
    wait_for {@driver.find_element(ACTIONS_VIEWCUSTOMER).displayed?}
    viewcustomer = @driver.find_element(ACTIONS_VIEWCUSTOMER)
    viewcustomer.click
    sleep(2)
    @driver.switch_to.frame(0)
  end

  def actions_pushtoqbo()
    #Only accessible in popup actions
    def wait_for()
      Selenium::WebDriver::Wait.new(:timeout => 5).until {yield}
    end
    wait_for {@driver.find_element(ACTIONS_PUSHTOQBO).displayed?}
    pushtoqbo = @driver.find_element(ACTIONS_PUSHTOQBO)
    pushtoqbo.click
    def wait_for2()
      Selenium::WebDriver::Wait.new(:timeout => 5).until {yield}
    end
    wait_for2 {@driver.find_element(PUSH_CONFIRM).displayed?}
    confirm = @driver.find_element(PUSH_CONFIRM)
    confirm.click
    sleep(3)
  end

  def actions_pushtons()
    #Only accessible in popup actions
    def wait_for()
      Selenium::WebDriver::Wait.new(:timeout => 5).until {yield}
    end
    wait_for {@driver.find_element(ACTIONS_PUSHTONS).displayed?}
    pushtons = @driver.find_element(ACTIONS_PUSHTONS)
    pushtons.click
    def wait_for2()
      Selenium::WebDriver::Wait.new(:timeout => 5).until {yield}
    end
    wait_for2 {@driver.find_element(PUSH_CONFIRM).displayed?}
    confirm = @driver.find_element(PUSH_CONFIRM)
    confirm.click
    sleep(3)
  end

  def actions_pullfromqbo()
    #Only accessible in popup actions
    def wait_for()
      Selenium::WebDriver::Wait.new(:timeout => 5).until {yield}
    end
    wait_for {@driver.find_element(ACTIONS_PULLFROMQBO).displayed?}
    pullfromqbo = @driver.find_element(ACTIONS_PULLFROMQBO)
    pullfromqbo.click
    sleep(3)
  end

  def actions_viewinqbo()
    #Only accessible in popup actions
    def wait_for()
      Selenium::WebDriver::Wait.new(:timeout => 5).until {yield}
    end
    wait_for {@driver.find_element(ACTIONS_VIEWINQBO).displayed?}
    pullfromqbo = @driver.find_element(ACTIONS_VIEWINQBO)
    pullfromqbo.click
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
    sleep(3)
  end

  #CSS Methods: Popup (Lines)
  def lines_tab()
    def wait_for()
      Selenium::WebDriver::Wait.new(:timeout => 5).until {yield}
    end
    wait_for {@driver.find_element(LINES_TAB).displayed?}
    lines_tab = @driver.find_element(LINES_TAB)
    lines_tab.click
  end

  def line1_service_date(servicedate1)
    def wait_for()
      Selenium::WebDriver::Wait.new(:timeout => 5).until {yield}
    end
    wait_for {@driver.find_element(LINE1_SERVICE_DATE_SPAN).displayed?}
    span_field = @driver.find_element(LINE1_SERVICE_DATE_SPAN)
    span_field.click
    def wait_for2()
      Selenium::WebDriver::Wait.new(:timeout => 5).until {yield}
    end
    wait_for2 {@driver.find_element(LINE1_SERVICE_DATE).displayed?}
    servicedate_field = @driver.find_element(LINE1_SERVICE_DATE)
    servicedate_field.send_keys(servicedate1)
  end

  def line1_item(item1)
    def wait_for()
      Selenium::WebDriver::Wait.new(:timeout => 5).until {yield}
    end
    wait_for {@driver.find_element(LINE1_ITEM_SPAN).displayed?}
    span_field = @driver.find_element(LINE1_ITEM_SPAN)
    span_field.click
    def wait_for2()
      Selenium::WebDriver::Wait.new(:timeout => 5).until {yield}
    end
    wait_for2 {@driver.find_element(LINE1_SERVICE_DATE).displayed?}
    item_field = @driver.find_element(LINE1_SERVICE_DATE)
    item_field.send_keys(item1)
    sleep(1)
    @driver.action.send_keys(:enter).perform
  end

  def line1_description(description1)
    def wait_for()
      Selenium::WebDriver::Wait.new(:timeout => 5).until {yield}
    end
    wait_for {@driver.find_element(LINE1_DESCRIPTION).displayed?}
    span_field = @driver.find_element(LINE1_DESCRIPTION)
    span_field.click
    def wait_for2()
      Selenium::WebDriver::Wait.new(:timeout => 5).until {yield}
    end
    wait_for2 {@driver.find_element(LINE1_DESCRIPTION_TEXTAREA).displayed?}
    sleep(2)
    item_field = @driver.find_element(LINE1_DESCRIPTION_TEXTAREA)
    item_field.send_keys(description1)
    sleep(1)
    @driver.action.send_keys(:enter).perform
  end

  def line1_delete()
    def wait_for()
      Selenium::WebDriver::Wait.new(:timeout => 5).until {yield}
    end
    wait_for {@driver.find_element(LINE1_DELETE).displayed?}
    trashcan = @driver.find_element(LINE1_DELETE)
    trashcan.click
    sleep(2)
  end

  def add_lines()
    def wait_for()
      Selenium::WebDriver::Wait.new(:timeout => 5).until {yield}
    end
    wait_for {@driver.find_element(ADD_LINES).displayed?}
    button = @driver.find_element(ADD_LINES)
    button.click
    sleep(2)
    @driver.execute_script("window.scrollTo(0, document.body.scrollHeight)")
  end

  def clear_lines()
    def wait_for()
      Selenium::WebDriver::Wait.new(:timeout => 5).until {yield}
    end
    wait_for {@driver.find_element(CLEAR_LINES).displayed?}
    @driver.execute_script("window.scrollTo(0, document.body.scrollHeight)")
    button = @driver.find_element(CLEAR_LINES)
    button.click
    sleep(2)
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

  #CSS Methods: Popup (Contacts)
  def contacts_tab()
    def wait_for()
      Selenium::WebDriver::Wait.new(:timeout => 5).until {yield}
    end
    wait_for {@driver.find_element(CUSTOMER_CONTACTS_TAB).displayed?}
    contacts_tab = @driver.find_element(CUSTOMER_CONTACTS_TAB)
    contacts_tab.click
  end
  #Use Class - Contacts Resource from here

  #CSS Methods: Popup (Notes)
  def notes_tab()
    def wait_for()
      Selenium::WebDriver::Wait.new(:timeout => 5).until {yield}
    end
    wait_for {@driver.find_element(NOTES_TAB).displayed?}
    notes_tab = @driver.find_element(NOTES_TAB)
    notes_tab.click
  end

  def customer_memo(customermemo)
    def wait_for()
      Selenium::WebDriver::Wait.new(:timeout => 5).until {yield}
    end
    wait_for {@driver.find_element(CUSTOMER_MEMO_FIELD).displayed?}
    customer_memo = @driver.find_element(CUSTOMER_MEMO_FIELD)
    customer_memo.send_keys(customermemo)
  end

  def private_notes(privatenotes)
    def wait_for()
      Selenium::WebDriver::Wait.new(:timeout => 5).until {yield}
    end
    wait_for {@driver.find_element(PRIVATE_NOTES_FIELD).displayed?}
    private_notes = @driver.find_element(PRIVATE_NOTES_FIELD)
    private_notes.send_keys(privatenotes)
  end

  #CSS Methods: Popup (Activities)
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
    activity_search.send_keys(searchactivity)
    def wait_for2()
      Selenium::WebDriver::Wait.new(:timeout => 5).until {yield}
    end
    wait_for2 {@driver.find_element(SEARCH_BTN).displayed?}
    search_confirm = @driver.find_element(SEARCH_BTN)
    search_confirm.click
    sleep(1)
  end

  def top_activity()
    def wait_for()
      Selenium::WebDriver::Wait.new(:timeout => 5).until {yield}
    end
    wait_for {driver.find_element(TOP_ACTIVITY).displayed?}
    top_refnumber = @driver.find_element(TOP_ACTIVITY)
    top_refnumber.click
    sleep(2)
    @driver.switch_to.frame(0)
  end

  def top_activitydescription()
    top_activitydescription = @driver.find_element(TOP_ACTIVITY_DESCRIPTION)
  end



end
