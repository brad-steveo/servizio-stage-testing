class EstimatesResource

  #CSS Selectors: Grid
  TOP_REF = {xpath: "/html/body/div[1]/div/div/div[1]/div/div[1]/div/div/div[3]/div[3]/section/section/div/div[2]/article/div/div/div/div/div/div[2]/table/tbody/tr[1]/td[2]/div/div/div/a/span"}
  TOP_NAME = {xpath: "/html/body/div[1]/div/div/div[1]/div/div[1]/div/div/div[3]/div[3]/section/section/div/div[2]/article/div/div/div/div/div/div[2]/table/tbody/tr[1]/td[3]/span"}
  TOP_ACTIONS = {xpath: "/html/body/div[1]/div/div/div[1]/div/div[1]/div/div/div[3]/div[3]/section/section/div/div[2]/article/div/div/div/div/div/div[2]/table/tbody/tr[1]/td[1]/div/div/div/div/div/div[1]/div/i"}
    GRID_CREATE_ACTIVITY = {css: "a[id$='GridActionsCreateActivityLink']"}
    GRID_PRINT_EMAIL = {css: "a[id$='GridActionsPrintEmailLink']"}
    GRID_MAKE_INACTIVE = {css: "a[id$='GridActionsMakeInactiveLink']"}
      MAKE_INACTIVE_CONFIRM = {css: "span[id$='ConfirmButton']"}
  TOP_SENT_ON = {xpath: "/html/body/div[1]/div/div/div[1]/div/div[1]/div/div/div[3]/div[3]/section/section/div/div[2]/article/div/div/div/div/div/div[2]/table/tbody/tr[1]/td[19]"}
  GRID_MENU = {css: "div[class='dropdown-header select']"}
  EXPORT_GRID = {css: "div[id$='ExportTitlePlaceholder']"}
  NEW_ESTIMATE = {css: "div[id$='b2-NewTitlePlaceholder']"}
  SHOW_INACTIVES = {css: "input[id$='SwitchShowInactives']"}
  ID_COLUMN = {css: "input[id$='b7-ColumnSearchID']"}
  ID_COLUMN_CLEAR = {xpath: "/html/body/div[1]/div/div/div[1]/div/div[1]/div/div/div[3]/div[3]/section/section/div/div[2]/article/div/div/div/div/div/div[2]/table/thead/tr/th[2]/div[3]/div/i"}
  NAME_COLUMN = {css: "input[id$='b9-Input_SearchVar']"}
  NAME_COLUMN_CLEAR = {xpath: "/html/body/div[1]/div/div/div[1]/div/div[1]/div/div/div[3]/div[3]/section/section/div/div[2]/article/div/div/div/div/div/div[2]/table/thead/tr/th[3]/div[3]/div/div/i[2]"}
  SEARCH_RESET = {css: "div[title='Grid is currently being filtered. Click to remove all filters.']"}
  RESOURCE_REFRESH = {xpath: "/html/body/div[1]/div/div/div[1]/div/div[1]/div/div/div[3]/div[3]/section/section/div/div[2]/article/div/div/div/div/div/div[1]/div[1]/div/div/div[2]/i"}
  CUSTOMER_SELECT_SEARCH = {css: "input[id$='CustomerSearch']"}
  CUSTOMER_SEARCH_BUTTON = {css: "button[id$='CustomerSearchButton']"}
  TOP_CUSTOMER_SELECT = {xpath: "/html/body/div[19]/div/div/div/div/div/div[2]/div/div/div/div[2]/div/div[1]/div/div/div[3]/button"}

  #CSS Selectors: Detail
  NAME_FIELD = {css: "input[id$='Input_DBAName']"}
  LOCATION_DROPDOWN = {css: "select[id$='LocationDropdown']"}
  TYPE_DROPDOWN = {css: "select[id$='EstimateTypeDropdown']"}
  STAGE_DROPDOWN = {css: "select[id$='EstimateStageDropdown']"}
  CUSTOMER_SELECT = {xpath: "/html/body/div[1]/div/div/div/div/div[1]/div/div/div[3]/div/section/section/div/div[3]/article/div/div/div/div/div[1]/form/div[1]/div/div[2]/div[5]/div/button"}
  DETAIL_CUSTOMER_SELECT_SEARCH = {css: "input[id$='CustomerSearch']"}
    DETAIL_TOP_CUSTOMER_SELECT = {xpath: "/html/body/div[19]/div/div/div/div/div/div[3]/div/div[1]/div/div/div[3]/button"}
  AE_DROPDOWN = {css: "select[id$='AccountExecDropdown']"}
  NTE_FIELD = {css: "input[id$='Input_NTE']"}
  ADD_FROM_TEMPLATE_BUTTON = {css: "button[id$='AddFromTemplateButton']"}
  SELECT_TOP_TEMPLATE = {xpath: "/html/body/div[20]/div/div/div/div/div/div[2]/div/div/div/div[3]/div/div[1]/div/div/div[3]/button"}
  SELECT_TEMPLATE = {xpath: "/html/body/div[20]/div/div/div/div/div/div[2]/div/div/div/div[2]/button/span"}
  ACTIVITIES_SUBTAB = {xpath: "/html/body/div[1]/div/div/div[1]/div/div/div/div/div[3]/div[3]/section/section/div/div[3]/article/div/div/div/div/div[1]/div[2]/div/div/section/header/div[1]/div[7]/button/div/span"}
    ACTIVITIES_ID_COLUMN = {xpath: "/html/body/div[1]/div/div/div/div/div/div/div/div[3]/div[3]/section/section/div/div[3]/article/div/div/div/div/div[1]/div[2]/div/div/section/section/div/div[7]/article/div/div/div/table/thead/tr/th[1]"}
    TOP_ACTIVITY_REF = {xpath: "/html/body/div[1]/div/div/div/div/div/div/div/div[3]/div[3]/section/section/div/div[3]/article/div/div/div/div/div[1]/div[2]/div/div/section/section/div/div[7]/article/div/div/div/table/tbody/tr/td[1]/a/span"}
    TOP_ACTIVITY_DESCRIPTION = {xpath: "/html/body/div[1]/div/div/div/div/div/div/div/div[3]/div[3]/section/section/div/div[3]/article/div/div/div/div/div[1]/div[2]/div/div/section/section/div/div[7]/article/div/div/div/table/tbody/tr/td[8]/span"}
    THIRD_TAB = {xpath: "/html/body/div[1]/div/div/div/div/div[1]/div/div/div[3]/div[3]/section/header/div[1]/div/div/div[4]/div/div/button/div/div/span"}
  DETAIL_ACTIONS_MENU = {css: "div[id='b33-b26-b79-b1-DropdownHeader']"}
    DETAIL_CREATE_ACTIVITY = {css: "span[id='b33-b26-b79-GridActionsCreateActivity']"}
    DETAIL_PRINT_EMAIL = {css: "span[id='b33-b26-b79-GridActionsPrintEmail']"}
  CANCEL_BUTTON = {css: "button[id$='EstimateCancelButton']"}
  SAVE_BUTTON = {css: "button[id$='EstimateSaveButton']"}
  SAVE_CLOSE_BUTTON = {css: "button[id$='EstimateSaveAndCloseButton']"}

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

  def top_sent()
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait.until {@driver.find_element(TOP_SENT_ON).displayed?}
    top_record = @driver.find_element(TOP_SENT_ON)
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

  def new_estimate(customerselect)
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait.until {@driver.find_element(GRID_MENU).displayed?}
    wait.until {@driver.find_element(TOP_REF).displayed?}
    grid_actions = @driver.find_element(GRID_MENU)
    grid_actions.click
    wait.until {@driver.find_element(NEW_ESTIMATE).displayed?}
    option = @driver.find_element(NEW_ESTIMATE)
    option.click
    sleep(2)
    wait.until {@driver.find_element(CUSTOMER_SELECT_SEARCH).displayed?}
    customersearch = @driver.find_element(CUSTOMER_SELECT_SEARCH)
    customersearch.send_keys(customerselect)
    sleep(2)
    wait.until {@driver.find_element(CUSTOMER_SEARCH_BUTTON).displayed?}
    button = @driver.find_element(CUSTOMER_SEARCH_BUTTON)
    button.click
    sleep(2)
    wait.until {@driver.find_element(TOP_CUSTOMER_SELECT).displayed?}
    button = @driver.find_element(TOP_CUSTOMER_SELECT)
    button.click
    sleep(2)
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

  def resource_refresh()
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait.until {@driver.find_element(RESOURCE_REFRESH).displayed?}
    button = @driver.find_element(RESOURCE_REFRESH)
    button.click
    sleep(2)
  end

  #Class Methods: Detail
  def name(estimatename)
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait.until {@driver.find_element(NAME_FIELD).displayed?}
    field = @driver.find_element(NAME_FIELD)
    field.send_keys(estimatename)
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

  def stage(stageselect)
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait.until {@driver.find_element(STAGE_DROPDOWN).displayed?}
    dropdown_list = @driver.find_element(STAGE_DROPDOWN)
    options = dropdown_list.find_elements(tag_name: 'option')
    options.each {|option| option.click if option.text == (stageselect)}
  end

  def customer_select(customersearch)
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait.until {@driver.find_element(CUSTOMER_SELECT).displayed?}
    button = @driver.find_element(CUSTOMER_SELECT)
    button.click
    wait.until {@driver.find_element(DETAIL_CUSTOMER_SELECT_SEARCH)}
    field = @driver.find_element(DETAILCUSTOMER_SELECT_SEARCH)
    field.send_keys(customersearch)
    sleep(1)
    @driver.action.send_keys(:enter).perform
    sleep(1)
    wait.until {@driver.find_element(DETAIL_TOP_CUSTOMER_SELECT).displayed?}
    button2 = @driver.find_element(DETAIL_TOP_CUSTOMER_SELECT)
    button2.click
    sleep(2)
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

  def add_lines_template()
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait.until {@driver.find_element(ADD_FROM_TEMPLATE_BUTTON).displayed?}
    addbutton = @driver.find_element(ADD_FROM_TEMPLATE_BUTTON)
    addbutton.click
    wait.until {@driver.find_element(SELECT_TOP_TEMPLATE).displayed?}
    selecttopbutton = @driver.find_element(SELECT_TOP_TEMPLATE)
    selecttopbutton.click
    wait.until {@driver.find_element(SELECT_TEMPLATE).displayed?}
    selectbutton = @driver.find_element(SELECT_TEMPLATE)
    selectbutton.click
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
    sleep(2)
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
