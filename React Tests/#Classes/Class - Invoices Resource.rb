class InvoicesResource

  #CSS Selectors: Grid
  TOP_REF = {xpath: "/html/body/div[1]/div/div/div/div/div[1]/div/div/div[3]/div[2]/section/section/div/div[2]/article/div/div/div/div/div/div[2]/table/tbody/tr[1]/td[2]/div/div/div/a/span"}
  TOP_CUSTOMER = {xpath: '/html/body/div[1]/div/div/div/div/div[1]/div/div/div[3]/div[2]/section/section/div/div[2]/article/div/div/div/div/div/div[2]/table/tbody/tr[1]/td[3]/span'}
  TOP_ACTIONS = {xpath: "/html/body/div[1]/div/div/div/div/div[1]/div/div/div[3]/div[2]/section/section/div/div[2]/article/div/div/div/div/div/div[2]/table/tbody/tr[1]/td[1]/div/div/div/div[1]/div/i"}
    GRID_CREATE_ACTIVITY = {css: "a[id$='GridActionsCreateActivity']"}
    GRID_PRINT_EMAIL = {css: "a[id$='GridActionsPrintEmail']"}
  GRID_ACTIONS = {css: "div[class='dropdown-header select']"}
  NEW_INVOICE = {css: "div[id='b21-b39-b2-NewTitlePlaceholder']"}
  EXPORT_GRID = {css: "div[id$='ExportTitlePlaceholder']"}
  SHOW_INACTIVES = {css: "input[id$='SwitchShowInactives']"}
  ID_COLUMN = {css: "input[id='b21-b39-b5-Input_SearchVar']"}
  ID_COLUMN_CLEAR = {xpath: "/html/body/div[1]/div/div/div/div/div[1]/div/div/div[3]/div[2]/section/section/div/div[2]/article/div/div/div/div/div/div[2]/table/thead/tr/th[2]/div[3]/div/div/i[2]"}
  CUSTOMER_COLUMN = {css: "input[id='b21-b39-b7-Input_SearchVar']"}
  CUSTOMER_COLUMN_CLEAR = {xpath: "/html/body/div[1]/div/div/div/div/div[1]/div/div/div[3]/div[2]/section/section/div/div[2]/article/div/div/div/div/div/div[2]/table/thead/tr/th[3]/div[3]/div/div/i[2]"}
  SEARCH_RESET = {css: "i[title='Grid is currently being filtered. Click to remove all filters.']"}

  #CSS Selectors: Detail


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

  def top_open()
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait.until {@driver.find_element(TOP_REF).displayed?}
    top_record = @driver.find_element(TOP_REF)
    top_record.click
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

  #CSS Mehtods: Detail

end
