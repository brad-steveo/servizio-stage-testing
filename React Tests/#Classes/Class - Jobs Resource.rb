class JobsResource

  #CSS Selectors: Grid
  TOP_REF = {xpath: "/html/body/div[1]/div/div/div[1]/div/div/div/div/div[3]/div[3]/section/section/div/div[2]/article/div/div/div/div/div/div[2]/table/tbody/tr[1]/td[2]/div/div/div/a/span"}
  TOP_NAME = {xpath: "/html/body/div[1]/div/div/div[1]/div/div/div/div/div[3]/div[3]/section/section/div/div[2]/article/div/div/div/div/div/div[2]/table/tbody/tr[1]/td[3]/span"}
  TOP_ACTIONS = {xpath: "/html/body/div[1]/div/div/div[1]/div/div/div/div/div[3]/div[3]/section/section/div/div[2]/article/div/div/div/div/div/div[2]/table/tbody/tr[1]/td[1]/div/div/div/div/div/div[1]/div/i"}
    GRID_CREATE_ACTIVITY = {css: "a[id$='GridActionsCreateActivityLink']"}
    GRID_PRINT_EMAIL = {css: "a[id$='GridActionsPrintEmailLink']"}
    GRID_MAKE_INACTIVE = {css: "a[id$='GridActionsMakeInactiveLink']"}
      MAKE_INACTIVE_CONFIRM = {css: "span[id$='ConfirmButton']"}
  GRID_MENU = {css: "div[class='dropdown-header select']"}
  EXPORT_GRID = {css: "div[id$='ExportTitlePlaceholder']"}
  NEW_JOB = {css: "div[id$='NewTitlePlaceholder']"}
  SHOW_INACTIVES = {css: "input[id$='SwitchShowInactives']"}
  ID_COLUMN = {css: "input[id$='b5-ColumnSearchID']"}
  ID_COLUMN_CLEAR = {xpath: "/html/body/div[1]/div/div/div[1]/div/div/div/div/div[3]/div[3]/section/section/div/div[2]/article/div/div/div/div/div/div[2]/table/thead/tr/th[2]/div[3]/div/i"}
  NAME_COLUMN = {css: "input[id$='b7-Input_SearchVar']"}
  NAME_COLUMN_CLEAR = {xpath: "/html/body/div[1]/div/div/div[1]/div/div/div/div/div[3]/div[3]/section/section/div/div[2]/article/div/div/div/div/div/div[2]/table/thead/tr/th[3]/div[3]/div/div/i[2]"}
  SEARCH_RESET = {css: "div[title='Grid is currently being filtered. Click to remove all filters.']"}
  RESOURCE_REFRESH = {xpath: "/html/body/div[1]/div/div/div[1]/div/div/div/div/div[3]/div[3]/section/section/div/div[2]/article/div/div/div/div/div/div[1]/div[1]/div[1]/div/div[2]/i"}
  CLOSE_PATROLS = {xpath: "/html/body/div[14]/div/div/div/div/div/div[1]/i"}
  CUSTOMER_SELECT_SEARCH = {css: "input[id$='CustomerSearch']"}
  CUSTOMER_SEARCH_BUTTON = {css: "button[id$='CustomerSearchButton']"}
  TOP_CUSTOMER_SELECT = {xpath: "/html/body/div[9]/div/div/div/div/div/div[2]/div/div/div/div[2]/div/div[1]/div/div/div[3]/button"}

  #CSS Selectors: Detail
  NAME_FIELD = {css: "input[id$='Input_DBAName']"}
  LOCATION_DROPDOWN = {css: "select[id$='LocationDropdown']"}
  TYPE_DROPDOWN = {css: "select[id$='JobTypeDropdown']"}
  PO_NUMBER_FIELD = {css: "input[id$='Input_PONumber']"}
  AE_DROPDOWN = {css: "select[id$='AccountExecDropdown']"}
  NTE_FIELD = {css: "input[id$='Input_NotToExceed']"}
  LINE_ITEMS_SUBTAB = {xpath: "/html/body/div[1]/div/div/div[1]/div/div/div/div/div[3]/div[3]/section/section/div/div[3]/article/div/div/div/div/div[1]/form/div[2]/div/section/header/div[1]/div[1]/button/div/span"}
    ADD_LINES = {css: "button[id$='AddLineItemButton']"}
    CLEAR_LINES = {css: "button[id$='ClearAllLinesButton']"}
    ADD_DESCRIPTION = {css: "button[id$='AddDescriptionButton']"}
    TOP_DESCRIPTION = {xpath: "/html/body/div[1]/div/div/div[1]/div/div/div/div/div[3]/div[3]/section/section/div/div[3]/article/div/div/div/div/div[1]/form/div[2]/div/section/section/div/div[1]/article/div/div[1]/div[1]/div/table/tbody/tr/td[7]/div/div[1]/span"}
    TOP_BOX_DESCRIPTION = {xpath: "/html/body/div[1]/div/div/div[1]/div/div/div/div/div[3]/div[3]/section/section/div/div[3]/article/div/div/div/div/div[1]/div[2]/div/div/section/section/div/div[1]/article/div/div[1]/div[1]/div/table/tbody/tr/td[7]/div"}
    TOP_HIDDEN_DESCRIPTION = {xpath: "/html/body/div[2]/div/div/div/div/div[1]/div/div/div[3]/div[2]/section/section/div/div[3]/article/div/div/div/div/div[1]/div/div/section/section/div/div[1]/article/div/div[1]/div[1]/div/table/tbody/tr/td[7]/div/div[2]"}
    TOP_DESCRIPTION_TEXTAREA = {css: "textarea[id$='TextArea_Description']"} 
    TOP_LINE_DELETE = {xpath: "/html/body/div[1]/div/div/div[1]/div/div/div/div/div[3]/div[3]/section/section/div/div[3]/article/div/div/div/div/div[1]/form/div[2]/div/section/section/div/div[1]/article/div/div[1]/div[1]/div/table/tbody/tr/td[14]/a[2]/i"}
  ACTIVITIES_SUBTAB = {xpath: "/html/body/div[1]/div/div/div[1]/div/div/div/div/div[3]/div[3]/section/section/div/div[3]/article/div/div/div/div/div[1]/div[2]/div/div/section/header/div[1]/div[7]/button/div/span"}
    ACTIVITIES_ID_COLUMN = {xpath: "/html/body/div[1]/div/div/div[1]/div/div/div/div/div[3]/div[3]/section/section/div/div[3]/article/div/div/div/div/div[1]/div[2]/div/div/section/section/div/div[7]/article/div/div/table/thead/tr/th[1]"}
    TOP_ACTIVITY_REF = {xpath: "/html/body/div[1]/div/div/div[1]/div/div/div/div/div[3]/div[3]/section/section/div/div[3]/article/div/div/div/div/div[1]/div[2]/div/div/section/section/div/div[7]/article/div/div/table/tbody/tr/td[1]/a/span"}
    TOP_ACTIVITY_DESCRIPTION = {xpath: "/html/body/div[1]/div/div/div[1]/div/div/div/div/div[3]/div[3]/section/section/div/div[3]/article/div/div/div/div/div[1]/div[2]/div/div/section/section/div/div[7]/article/div/div/table/tbody/tr/td[7]/span"}
    THIRD_TAB = {xpath: "/html/body/div[1]/div/div/div/div/div/div/div/div[3]/div[3]/section/header/div[1]/div/div/div[4]/div/div/button/div/div/span"}
  DETAIL_ACTIONS_MENU = {css: "div[id='b33-b17-b97-b1-DropdownHeader']"}
    DETAIL_CREATE_ACTIVITY = {css: "span[id='b33-b17-b97-GridActionsCreateActivity']"}
    DETAIL_CREATE_INVOICE = {css: "span[id='b33-b17-b97-GridActionsCreateInvoice']"}
      DUP_INVOICE_CONFIRM = {css: "span[id$='b1-ConfirmButton']"}
    DETAIL_PRINT_EMAIL = {css: "span[id='b33-b17-b97-GridActionsPrintEmail']"}
  CANCEL_BUTTON = {css: "button[id$='JobCancelButton']"}
  SAVE_BUTTON = {css: "button[id$='JobSaveButton']"}
  SAVE_CLOSE_BUTTON = {css: "button[id$='JobSaveAndCloseButton']"}


  attr_reader :driver

  def initialize(driver)
    @driver = driver
  end

  #Class Methods: Grid
  def top_ref()
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait.until {@driver.find_element(TOP_REF).displayed?}
    top_record = @driver.find_element(TOP_REF)
  end

  def top_name()
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait.until {@driver.find_element(TOP_NAME).displayed?}
    top_record = @driver.find_element(TOP_NAME)
  end

  def top_open()
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait.until {@driver.find_element(TOP_REF).displayed?}
    top_record = @driver.find_element(TOP_REF)
    top_record.click
  end

  def make_inactive()
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait.until {@driver.find_element(TOP_REF).displayed?}
    toprecord = @driver.find_element(TOP_REF)
    wait.until {@driver.find_element(TOP_ACTIONS).displayed?}
    actions = @driver.find_element(TOP_ACTIONS)
    actions.click
    wait.until {@driver.find_element(GRID_MAKE_INACTIVE).displayed?}
    makeinactive = @driver.find_element(GRID_MAKE_INACTIVE)
    makeinactive.click
    wait.until {@driver.find_element(MAKE_INACTIVE_CONFIRM).displayed?}
    confirm = @driver.find_element(MAKE_INACTIVE_CONFIRM)
    confirm.click
    wait.until {@driver.find_element(TOP_REF) != toprecord}
  end

  def new_job(customername)
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait.until {@driver.find_element(GRID_MENU).displayed?}
    wait.until {@driver.find_element(TOP_REF).displayed?}
    grid_actions = @driver.find_element(GRID_MENU)
    grid_actions.click
    wait.until {@driver.find_element(NEW_JOB).displayed?}
    option = @driver.find_element(NEW_JOB)
    option.click
    sleep(2)
    wait.until {@driver.find_element(CUSTOMER_SELECT_SEARCH).displayed?}
    customerselect = @driver.find_element(CUSTOMER_SELECT_SEARCH)
    customerselect.send_keys(customername)
    sleep(2)
    wait.until {@driver.find_element(CUSTOMER_SEARCH_BUTTON).displayed?}
    button = @driver.find_element(CUSTOMER_SEARCH_BUTTON)
    button.click
    sleep(2)
    customerselect = @driver.find_element(CUSTOMER_SELECT_SEARCH)
    wait.until {@driver.find_element(TOP_CUSTOMER_SELECT).displayed?}
    select = @driver.find_element(TOP_CUSTOMER_SELECT)
    select.click
    sleep(2)
    wait.until {@driver.find_element(CLOSE_PATROLS).displayed?}
    closepatrols = @driver.find_element(CLOSE_PATROLS)
    closepatrols.click
  end

  def export_grid()
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait.until {@driver.find_element(GRID_MENU).displayed?}
    grid_actions = @driver.find_element(GRID_MENU)
    grid_actions.click
    wait.until {@driver.find_element(EXPORT_GRID).displayed?}
    export_grid = @driver.find_element(EXPORT_GRID)
    export_grid.click
    sleep(2)
  end

  def show_inactives()
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait.until {@driver.find_element(GRID_MENU).displayed?}
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait.until {@driver.find_element(TOP_REF).displayed?}
    grid_actions = @driver.find_element(GRID_MENU)
    grid_actions.click
    wait.until {@driver.find_element(SHOW_INACTIVES).displayed?}
    option = @driver.find_element(SHOW_INACTIVES)
    option.click
    sleep(2)
  end

  def search_id(searchname)
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait.until {@driver.find_element(ID_COLUMN).displayed?}
    search = @driver.find_element(ID_COLUMN)
    search.send_keys(searchname)
    sleep(1)
    @driver.action.send_keys(:enter).perform
    sleep(1)
    wait.until {@driver.find_element(TOP_REF).text.include?(searchname)}
  end

  def search_id_clear()
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait.until {@driver.find_element(ID_COLUMN_CLEAR).displayed?}
    button = @driver.find_element(ID_COLUMN_CLEAR)
    button.clear
    sleep(2)
  end

  def search_name(searchname)
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait.until {@driver.find_element(NAME_COLUMN).displayed?}
    search = @driver.find_element(NAME_COLUMN)
    search.send_keys(searchname)
    sleep(1)
    @driver.action.send_keys(:enter).perform
    sleep(1)
    wait.until {@driver.find_element(TOP_NAME).text.downcase.include?(searchname.downcase)}
  end

  def search_name_clear()
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait.until {@driver.find_element(NAME_COLUMN_CLEAR).displayed?}
    button = @driver.find_element(NAME_COLUMN_CLEAR)
    button.clear
    sleep(2)
  end

  def search_reset()
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait.until {@driver.find_element(SEARCH_RESET).displayed?}
    button = @driver.find_element(SEARCH_RESET)
    button.click
    sleep(2)
  end

  #CSS Methods: Detail
  def name(jobname)
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait.until {@driver.find_element(NAME_FIELD).displayed?}
    field = @driver.find_element(NAME_FIELD)
    field.send_keys(jobname)
  end

  def location(locationselect)
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait.until {@driver.find_element(LOCATION_DROPDOWN).displayed?}
    dropdown_list = @driver.find_element(LOCATION_DROPDOWN)
    options = dropdown_list.find_elements(tag_name: 'option')
    options.each {|option| option.click if option.text == (locationselect)}
  end

  def type(typeselect)
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait.until {@driver.find_element(TYPE_DROPDOWN).displayed?}
    dropdown_list = @driver.find_element(TYPE_DROPDOWN)
    options = dropdown_list.find_elements(tag_name: 'option')
    options.each {|option| option.click if option.text == (typeselect)}
  end

  def customer_select(customersearch)
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait.until {@driver.find_element(CUSTOMER_SELECT).displayed?}
    button = @driver.find_element(CUSTOMER_SELECT)
    button.click
    wait.until {@driver.find_element(CUSTOMER_SELECT_SEARCH)}
    field = @driver.find_element(CUSTOMER_SELECT_SEARCH)
    field.send_keys(customersearch)
    sleep(1)
    @driver.action.send_keys(:enter).perform
    sleep(1)
    wait.until {@driver.find_element(TOP_CUSTOMER_SELECT).displayed?}
    button2 = @driver.find_element(TOP_CUSTOMER_SELECT)
    button2.click
    sleep(2)
  end

  def po_number(jobponumber)
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait.until {@driver.find_element(PO_NUMBER_FIELD).displayed?}
    field = @driver.find_element(PO_NUMBER_FIELD)
    field.send_keys(jobponumber)
  end

  def account_executive(aeselect)
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait.until {@driver.find_element(AE_DROPDOWN).displayed?}
    dropdown_list = @driver.find_element(AE_DROPDOWN)
    options = dropdown_list.find_elements(tag_name: 'option')
    options.each {|option| option.click if option.text == (aeselect)}
  end

  def nte(nteinput)
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait.until {@driver.find_element(NTE_FIELD).displayed?}
    field = @driver.find_element(NTE_FIELD)
    field.send_keys(nteinput)
  end

  def top_line(descriptiontext)
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait.until {@driver.find_element(TOP_BOX_DESCRIPTION).displayed?}
    descbox = @driver.find_element(TOP_BOX_DESCRIPTION)
    sleep(1)
    descbox.click
    sleep(2)
    wait.until {@driver.find_element(TOP_DESCRIPTION_TEXTAREA).displayed?}
    desc = @driver.find_element(TOP_DESCRIPTION_TEXTAREA)
    desc.send_keys(descriptiontext)
    sleep(3)
  end

  def clear_lines()
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait.until {@driver.find_element(CLEAR_LINES).displayed?}
    clear = @driver.find_element(CLEAR_LINES)
    sleep(1)
    clear.click
    sleep(1)
  end

  def top_activity()
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait.until {@driver.find_element(TOP_ACTIVITY_REF).displayed?}
    top = @driver.find_element(TOP_ACTIVITY_REF)
  end

  def top_activity_description()
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait.until {@driver.find_element(TOP_ACTIVITY_DESCRIPTION).displayed?}
    description = @driver.find_element(TOP_ACTIVITY_DESCRIPTION)
  end

  def create_activity()
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait.until {@driver.find_element(ACTIVITIES_SUBTAB).displayed?}
    tab = @driver.find_element(ACTIVITIES_SUBTAB)
    tab.click
    sleep(2)
    wait.until {@driver.find_element(ACTIVITIES_ID_COLUMN).displayed?}
    actions = @driver.find_element(DETAIL_ACTIONS_MENU)
    actions.click
    sleep(2)
    wait.until {@driver.find_element(DETAIL_CREATE_ACTIVITY).displayed?}
    createactivity = @driver.find_element(DETAIL_CREATE_ACTIVITY)
    createactivity.click
    wait.until {@driver.find_element(THIRD_TAB).displayed?}
    wait.until {@driver.find_element(THIRD_TAB).text.include?("New Activity")}
  end

  def print_email()
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait.until {@driver.find_element(DETAIL_ACTIONS_MENU).displayed?}
    actions = @driver.find_element(DETAIL_ACTIONS_MENU)
    actions.click
    wait.until {@driver.find_element(DETAIL_PRINT_EMAIL).displayed?}
    printemail = @driver.find_element(DETAIL_PRINT_EMAIL)
    printemail.click
    wait.until {@driver.find_element(THIRD_TAB).displayed?}
    wait.until {@driver.find_element(THIRD_TAB).text.include?("Print/Email")}
  end

  def createinvoicefromjob()
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait.until {@driver.find_element(DETAIL_ACTIONS_MENU).displayed?}
    actions = @driver.find_element(DETAIL_ACTIONS_MENU)
    actions.click
    wait.until {@driver.find_element(DETAIL_CREATE_INVOICE).displayed?}
    createinvoice = @driver.find_element(DETAIL_CREATE_INVOICE)
    createinvoice.click
    sleep(2)
    if driver.find_element(DUP_INVOICE_CONFIRM).displayed?
      confirm = driver.find_element(DUP_INVOICE_CONFIRM)
      confirm.click
      wait.until {@driver.find_element(THIRD_TAB).displayed?}
      wait.until {@driver.find_element(THIRD_TAB).text.include?("New Invoice")}
    else
      wait.until {@driver.find_element(THIRD_TAB).displayed?}
      wait.until {@driver.find_element(THIRD_TAB).text.include?("New Invoice")}
    end
    sleep(2)
  end

  def cancel()
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait.until {@driver.find_element(CANCEL_BUTTON).displayed?}
    button = @driver.find_element(CANCEL_BUTTON)
    button.click
    sleep(2)
  end

  def save_close()
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait.until {@driver.find_element(SAVE_CLOSE_BUTTON).displayed?}
    button = @driver.find_element(SAVE_CLOSE_BUTTON)
    button.click
    sleep(4)
  end

end
