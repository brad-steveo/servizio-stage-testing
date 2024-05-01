class InvoicesResource

  #CSS Selectors: Grid
  TOP_REF = {xpath: "/html/body/div[1]/div/div/div[1]/div/div/div/div/div[3]/div[3]/section/section/div/div[2]/article/div/div/div/div/div/div[2]/table/tbody/tr[1]/td[3]/div/div/div/div[1]/a/span"}
  TOP_CUSTOMER = {xpath: '/html/body/div[1]/div/div/div[1]/div/div/div/div/div[3]/div[3]/section/section/div/div[2]/article/div/div/div/div/div/div[2]/table/tbody/tr[1]/td[4]/a/div/span'}
  TOP_QBID = {xpath: "/html/body/div[1]/div/div/div[1]/div/div/div/div/div[3]/div[3]/section/section/div/div[2]/article/div/div/div/div/div/div[2]/table/tbody/tr[1]/td[33]/div/span"}
  TOP_ACTIONS = {xpath: "/html/body/div[1]/div/div/div[1]/div/div/div/div/div[3]/div[3]/section/section/div/div[3]/article/div/div/div/div/div/div[2]/table/tbody/tr[1]/td[1]/div/div/div/div/div/div[1]/div/i"}
    GRID_CREATE_ACTIVITY = {css: "a[id$='GridActionsCreateActivity']"}
    GRID_PRINT_EMAIL = {css: "a[id$='GridActionsPrintEmail']"}
  GRID_ACTIONS = {css: "div[class='dropdown-header select']"}
  NEW_INVOICE = {css: "div[id$='b2-NewTitlePlaceholder']"}
  EXPORT_GRID = {css: "div[id$='ExportTitlePlaceholder']"}
  SHOW_INACTIVES = {css: "input[id$='SwitchShowInactives']"}
  ID_COLUMN = {css: "input[id$='b5-Input_SearchVar']"}
  ID_COLUMN_CLEAR = {xpath: "/html/body/div[1]/div/div/div[1]/div/div/div/div/div[3]/div[3]/section/section/div/div[3]/article/div/div/div/div/div/div[2]/table/thead/tr/th[3]/div[3]/div/div/i[2]"}
  CUSTOMER_COLUMN = {css: "input[id$='b7-Input_SearchVar']"}
  CUSTOMER_COLUMN_CLEAR = {xpath: "/html/body/div[1]/div/div/div[1]/div/div/div/div/div[3]/div[3]/section/section/div/div[3]/article/div/div/div/div/div/div[2]/table/thead/tr/th[4]/div[3]/div/div/i[2]"}
  SEARCH_RESET = {css: "div[title='Grid is currently being filtered. Click to remove all filters.']"}
  RESOURCE_REFRESH = {xpath: "/html/body/div[1]/div/div/div[1]/div/div/div/div/div[3]/div[3]/section/section/div/div[3]/article/div/div/div/div/div/div[1]/div[1]/div[1]/div/div[2]/i"}

  #CSS Selectors: Detail
  LINE_ITEMS_SUBTAB = {css: "div[id$='b8-Title']"}
  ADD_LINES = {css: "button[id$='AddLineItemButton']"}
  CLEAR_LINES = {css: "button[id$='ClearAllLinesButton']"}
  ADD_DESCRIPTION = {css: "button[id$='AddDescriptionButton']"}
  TOP_DESCRIPTION = {xpath: "/html/body/div[1]/div/div/div[1]/div/div/div/div/div[3]/div[3]/section/section/div/div[4]/article/div/div/div/div/div[1]/form/div[2]/div/section/section/div/div[1]/article/div/div[1]/div[1]/div/table/tbody/tr[1]/td[6]/div[2]/div[1]/span"}
  TOP_BOX_DESCRIPTION = {xpath: "/html/body/div[1]/div/div/div[1]/div/div/div/div/div[3]/div[3]/section/section/div/div[3]/article/div/div/div/div/div[1]/div[2]/div/div/section/section/div/div[1]/article/div/div[1]/div[1]/div/table/tbody/tr/td[6]/div[2]/div[1]"}
  TOP_HIDDEN_DESCRIPTION = {xpath: "/html/body/div[2]/div/div/div/div/div[1]/div/div/div[3]/div[2]/section/section/div/div[3]/article/div/div/div/div/div[1]/div/div/section/section/div/div[1]/article/div/div[1]/div[1]/div/table/tbody/tr/td[7]/div/div[2]"}
  TOP_DESCRIPTION_TEXTAREA = {css: "textarea[id$='Input_InvoiceLineDescription']"} 
  TOP_LINE_DELETE = {xpath: "/html/body/div[1]/div/div/div[1]/div/div/div/div/div[3]/div[3]/section/section/div/div[4]/article/div/div/div/div/div[1]/form/div[2]/div/section/section/div/div[1]/article/div/div[1]/div[1]/div/table/tbody/tr[1]/td[14]/a[2]/i"}
  ACTIVITIES_SUBTAB = {xpath: "/html/body/div[1]/div/div/div[1]/div/div/div/div/div[3]/div[3]/section/section/div/div[3]/article/div/div/div/div/div[1]/div[2]/div/div/section/header/div[1]/div[6]/button/div/span"}
    ACTIVITIES_ID_COLUMN = {xpath: "/html/body/div[1]/div/div/div[1]/div/div/div/div/div[3]/div[3]/section/section/div/div[3]/article/div/div/div/div/div[1]/div[2]/div/div/section/section/div/div[6]/article/div/div/table/thead/tr/th[1]"}
    TOP_ACTIVITY_REF = {xpath: "/html/body/div[1]/div/div/div[1]/div/div/div/div/div[3]/div[3]/section/section/div/div[3]/article/div/div/div/div/div[1]/div[2]/div/div/section/section/div/div[6]/article/div/div/table/tbody/tr/td[1]/a/span"}
    TOP_ACTIVITY_DESCRIPTION = {xpath: "/html/body/div[1]/div/div/div[1]/div/div/div/div/div[3]/div[3]/section/section/div/div[3]/article/div/div/div/div/div[1]/div[2]/div/div/section/section/div/div[6]/article/div/div/table/tbody/tr/td[7]/span"}
    THIRD_TAB = {xpath: "/html/body/div[1]/div/div/div[1]/div/div/div/div/div[3]/div[3]/section/header/div[1]/div[4]/div/button/div/div/span"}
  DETAIL_ACTIONS_MENU = {css: "div[id='b56-b45-b46-b1-DropdownHeader']"}
    DETAIL_CREATE_ACTIVITY = {css: "span[id='b56-b45-b46-GridActionsCreateActivity']"}
      CONFIRM_SYNC = {css: "span[id$='b1-ConfirmButton']"}
    DETAIL_PRINT_EMAIL = {css: "span[id='b56-b45-b46-GridActionsPrintEmail']"}
  DETAIL_ACTIONS_MENU_SYNC = {css: "div[id='b58-b45-b46-b1-Dropdown']"}
    DETAIL_SYNC_TO_QBO = {css: "span[id='b58-b45-b47-GridActionsSyncToQBO']"}
  CANCEL_BUTTON = {css: "button[id$='InvoiceCancelButton']"}
  SAVE_BUTTON = {css: "button[id$='InvoiceSaveButton']"}
  SAVE_CLOSE_BUTTON = {css: "button[id$='InvoiceSaveAndCloseButton']"}

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

  def top_customer()
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait.until {@driver.find_element(TOP_CUSTOMER).displayed?}
    top_record = @driver.find_element(TOP_CUSTOMER)
  end

  def top_qbid()
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait.until {@driver.find_element(TOP_QBID).displayed?}
    top_record = @driver.find_element(TOP_QBID)
  end

  def top_open()
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait.until {@driver.find_element(TOP_REF).displayed?}
    top_record = @driver.find_element(TOP_REF)
    top_record.click
  end

  def new_invoice()
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait.until {@driver.find_element(GRID_MENU).displayed?}
    wait.until {@driver.find_element(TOP_REF).displayed?}
    grid_actions = @driver.find_element(GRID_MENU)
    grid_actions.click
    wait.until {@driver.find_element(NEW_INVOICE).displayed?}
    option = @driver.find_element(NEW_INVOICE)
    option.click
    sleep(2)
  end

  def export_grid()
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait.until {@driver.find_element(GRID_ACTIONS).displayed?}
    grid_actions = @driver.find_element(GRID_ACTIONS)
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

  def search_customer(searchcustomer)
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait.until {@driver.find_element(CUSTOMER_COLUMN).displayed?}
    search = @driver.find_element(CUSTOMER_COLUMN)
    search.send_keys(searchcustomer)
    sleep(1)
    @driver.action.send_keys(:enter).perform
    sleep(1)
    wait.until {@driver.find_element(TOP_CUSTOMER).text.downcase.include?(searchcustomer.downcase)}
  end

  def search_name_clear()
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait.until {@driver.find_element(CUSTOMER_COLUMN_CLEAR).displayed?}
    button = @driver.find_element(CUSTOMER_COLUMN_CLEAR)
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

  #CSS Mehtods: Detail
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
    sleep(2)
  end

  def sync_to_qbo()
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait.until {@driver.find_element(DETAIL_ACTIONS_MENU_SYNC).displayed?}
    actions = @driver.find_element(DETAIL_ACTIONS_MENU_SYNC)
    actions.click
    wait.until {@driver.find_element(DETAIL_SYNC_TO_QBO).displayed?}
    sync = @driver.find_element(DETAIL_SYNC_TO_QBO)
    sync.click
    sleep(1)
    wait.until {@driver.find_element(CONFIRM_SYNC).displayed?}
    confirm = @driver.find_element(CONFIRM_SYNC)
    confirm.click
    sleep(7)
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

  def save()
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait.until {@driver.find_element(SAVE_BUTTON).displayed?}
    button = @driver.find_element(SAVE_BUTTON)
    button.click
    sleep(2)
  end

  def save_close()
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait.until {@driver.find_element(SAVE_CLOSE_BUTTON).displayed?}
    button = @driver.find_element(SAVE_CLOSE_BUTTON)
    button.click
    sleep(2)
  end

end
