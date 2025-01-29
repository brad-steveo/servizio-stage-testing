class PatrolsResource

  #CSS Selectors: Grid
  TOP_REF = {xpath: "/html/body/div[1]/div/div/div/div/div[1]/div/div/div[3]/div[3]/section/section/div/div[2]/article/div/div/div/div/div/div[2]/table/tbody/tr[1]/td[2]/div/div/div[1]/a/span"}
  TOP_NAME = {xpath: "/html/body/div[1]/div/div/div/div/div[1]/div/div/div[3]/div[3]/section/section/div/div[2]/article/div/div/div/div/div/div[2]/table/tbody/tr[1]/td[3]/span"}
  TOP_ACTIONS = {xpath: "/html/body/div[1]/div/div/div[1]/div/div[1]/div/div/div[3]/div[3]/section/section/div/div[2]/article/div/div/div/div/div/div[2]/table/tbody/tr[1]/td[1]"}
    GRID_CREATE_ACTIVITY = {css: "a[id$='GridActionsCreateActivityLink']"}
    GRID_PRINT_EMAIL = {xpath: "/html/body/div[1]/div/div/div/div/div[1]/div/div/div[3]/div/section/section/div/div[2]/article/div/div/div/div/div/div[2]/table/tbody/tr[1]/td[1]/div/div/div/div[2]/div/a[5]"}
    GRID_MAKE_INACTIVE = {css: "a[id$='GridActionsMakeInactiveLink']"}
      MAKE_INACTIVE_CONFIRM = {css: "span[id$='ConfirmButton']"}
  TOP_SENT_ON = {xpath: "/html/body/div[1]/div/div/div/div/div/div/div/div[3]/div[3]/section/section/div/div[2]/article/div/div/div/div/div/div[2]/table/tbody/tr[1]/td[19]"}
  GRID_MENU = {css: "div[class='dropdown-header select']"}
  NEW_PATROL = {css: "a[id$='GridMenuCreateNew']"}
  EXPORT_GRID = {css: "div[id$='ExportTitlePlaceholder']"}
  SHOW_INACTIVES = {css: "input[id$='SwitchShowInactives']"}
  OLD_PATROLS = {css: "input[id$='SwitchShowOldPatrols']"}
  ID_COLUMN = {css: "input[id$='b7-Input_SearchVar']"}
  ID_COLUMN_CLEAR = {xpath: "/html/body/div[1]/div/div/div[1]/div/div[1]/div/div/div[3]/div[3]/section/section/div/div[2]/article/div/div/div/div/div/div[2]/table/thead/tr/th[2]/div[2]/div/div/i"}
  NAME_COLUMN = {css: "input[id$='b9-Input_SearchVar']"}
  NAME_COLUMN_CLEAR = {xpath: "/html/body/div[1]/div/div/div[1]/div/div[1]/div/div/div[3]/div[3]/section/section/div/div[2]/article/div/div/div/div/div/div[2]/table/thead/tr/th[3]/div[2]/div/div/div/i[2]"}
  SEARCH_RESET = {css: "div[title='Grid is currently being filtered. Click to remove all filters.']"}
  RESOURCE_REFRESH = {xpath: "/html/body/div[1]/div/div/div[1]/div/div[1]/div/div/div[3]/div[3]/section/section/div/div[2]/article/div/div/div/div/div/div[1]/div[1]/div[1]/div/div[2]/i"}
  CUSTOMER_SELECT_SEARCH = {css: "input[id$='CustomerSearch']"}
  CUSTOMER_SEARCH_BUTTON = {css: "button[class$='primary searchButton']"}
  TOP_CUSTOMER_SELECT = {xpath: "/html/body/div[6]/div/div/div/div/div/div[2]/div/div/div/div[2]/div/div[1]/div/div/div[3]/button"}

  #CSS Selectors: Detail
  SUBMITTED_NAME_FIELD = {css: "input[id$='Input_SubmittedName']"}
  BAD_PATROL_DROPDOWN = {css: "select[id$='BadCustomer_Dropdown']"}
  SCOPE_OF_WORK_TEXTAREA = {css: "textarea[id$=TextArea_Description']"}
  LOCATION_DROPDOWN = {css: "select[id$='Locations']"}
  ACCOUNT_EXECUTIVE_DROPDOWN = {css: "select[id$='AccountExecutives']"}
  ACTIVITIES_SUBTAB = {xpath: "/html/body/div[1]/div/div/div/div/div/div/div/div[3]/div[3]/section/section/div/div[3]/article/div/div/div/div/div[1]/div/div/div/section/header/div[1]/div[3]/button/div/span"}
    ACTIVITIES_ID_COLUMN = {xpath: "/html/body/div[2]/div/div/div/div/div/div/div/div[3]/div[3]/section/section/div/div[3]/article/div/div/div/div/div[1]/div/div/div/section/section/div/div[3]/article/div/div/div/table/thead/tr/th[1]"}
    TOP_ACTIVITY_REF = {xpath: "/html/body/div[2]/div/div/div/div/div/div/div/div[3]/div[3]/section/section/div/div[3]/article/div/div/div/div/div[1]/div/div/div/section/section/div/div[3]/article/div/div/div/table/tbody/tr/td[1]/a/span"}
    TOP_ACTIVITY_DESCRIPTION = {xpath: "/html/body/div[1]/div/div/div/div/div/div/div/div[3]/div[3]/section/section/div/div[3]/article/div/div/div/div/div[1]/div/div/div/section/section/div/div[3]/article/div/div/div/table/tbody/tr/td[8]/span"}
    THIRD_TAB = {xpath: "/html/body/div[1]/div/div/div/div/div[1]/div/div/div[3]/div[3]/section/header/div[1]/div/div/div[4]/div/div/button/div/div/span"}
  DETAIL_ACTIONS_MENU = {css: "div[id='b33-b8-b43-b1-DropdownHeader']"}
    DETAIL_CREATE_ACTIVITY = {css: "span[id='b33-b8-b43-GridActionsCreateActivity']"}
    DETAIL_PRINT_EMAIL = {css: "span[id='b33-b8-b43-GridActionsPrintEmail']"}
  CANCEL_BUTTON = {css: "button[id$='CancelButton']"}
  SAVE_BUTTON = {css: "button[id$='PatrolSaveButton']"}
  SAVE_CLOSE_BUTTON = {css: "button[id$='PatrolSaveAndCloseButton']"}


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

  def new_patrol(customer)
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait.until {@driver.find_element(GRID_MENU).displayed?}
    wait.until {@driver.find_element(TOP_REF).displayed?}
    grid_actions = @driver.find_element(GRID_MENU)
    grid_actions.click
    wait.until {@driver.find_element(NEW_PATROL).displayed?}
    option = @driver.find_element(NEW_PATROL)
    option.click
    sleep(2)
    wait.until {@driver.find_element(CUSTOMER_SELECT_SEARCH).displayed?}
    customersearch = @driver.find_element(CUSTOMER_SELECT_SEARCH)
    customersearch.send_keys(customer)
    sleep(2)
    customersearchbutton = @driver.find_element(CUSTOMER_SEARCH_BUTTON)
    customersearchbutton.click
    sleep(2)
    wait.until {@driver.find_element(TOP_CUSTOMER_SELECT).displayed?}
    top_customer = @driver.find_element(TOP_CUSTOMER_SELECT)
    top_customer.click
    wait.until {@driver.find_element(SUBMITTED_NAME_FIELD).displayed?}
  end

  def export_grid()
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait.until {@driver.find_element(GRID_MENU).displayed?}
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait.until {@driver.find_element(TOP_REF).displayed?}
    grid_actions = @driver.find_element(GRID_MENU)
    grid_actions.click
    wait.until {@driver.find_element(EXPORT_GRID).displayed?}
    option = @driver.find_element(EXPORT_GRID)
    option.click
    sleep(5)
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

  def old_patrols()
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait.until {@driver.find_element(GRID_MENU).displayed?}
    wait.until {@driver.find_element(TOP_REF).displayed?}
    grid_actions = @driver.find_element(GRID_MENU)
    grid_actions.click
    wait.until {@driver.find_element(OLD_PATROLS).displayed?}
    option = @driver.find_element(OLD_PATROLS)
    option.click
    sleep(2)
    grid_actions = @driver.find_element(GRID_MENU)
    grid_actions.click
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
    wait.until {@driver.find_element(TOP_NAME).text.include?(searchname)}
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
  def submitted_name(submittedname)
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait.until {@driver.find_element(SUBMITTED_NAME_FIELD).displayed?}
    field = @driver.find_element(SUBMITTED_NAME_FIELD)
    field.send_keys(submittedname)
  end

  def location(locationselect)
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait.until {@driver.find_element(LOCATION_DROPDOWN).displayed?}
    dropdown_list = @driver.find_element(LOCATION_DROPDOWN)
    options = dropdown_list.find_elements(tag_name: 'option')
    options.each {|option| option.click if option.text == (locationselect)}
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
    sleep(5)
    #wait.until {@driver.find_element(ACTIVITIES_ID_COLUMN).displayed?}
    actions = @driver.find_element(DETAIL_ACTIONS_MENU)
    actions.click
    wait.until {@driver.find_element(DETAIL_CREATE_ACTIVITY).displayed?}
    createactivity = @driver.find_element(DETAIL_CREATE_ACTIVITY)
    createactivity.click
    wait.until {@driver.find_element(THIRD_TAB).displayed?}
    wait.until {@driver.find_element(THIRD_TAB).text.include?("New Activity")}
    sleep(3)
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
    wait = Selenium::WebDriver::Wait.new(:timeout => 30)
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
    sleep(4) #Could maybe use a rescue loop here
  end

end
