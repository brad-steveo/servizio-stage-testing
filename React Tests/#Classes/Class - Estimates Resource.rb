class EstimatesResource

  #CSS Selectors
  TOP_REF = {xpath: "/html/body/div[1]/div/div/div/div/div/div/div/div[3]/div/section/section/div/div[2]/article/div/div/div/div/div/div[2]/table/tbody/tr[1]/td[2]/a/span"}
  TOP_NAME = {xpath: "/html/body/div[1]/div/div/div/div/div/div/div/div[3]/div/section/section/div/div[2]/article/div/div/div/div/div/div[2]/table/tbody/tr[1]/td[3]/span"}
  TOP_ACTIONS = {xpath: "/html/body/div[1]/div/div/div/div/div/div/div/div[3]/div/section/section/div/div[2]/article/div/div/div/div/div/div[2]/table/tbody/tr[1]/td[1]"}
    GRID_CREATE_ACTIVITY = {css: "a[id$='GridActionsCreateActivityLink']"}
    GRID_PRINT_EMAIL = {css: "a[id$='GridActionsPrintEmailLink']"}
    GRID_MAKE_INACTIVE = {css: "a[id$='GridActionsMakeInactiveLink']"}
      MAKE_INACTIVE_CONFIRM = {css: "span[id$='ConfirmButton']"}
  TOP_SENT_ON = {xpath: "/html/body/div[1]/div/div/div/div/div/div/div/div[3]/div/section/section/div/div[2]/article/div/div/div/div/div/div[2]/table/tbody/tr[1]/td[18]"}
  GRID_MENU = {css: "div[class='dropdown-header select']"}
  EXPORT_GRID = {css: "div[id$='ExportTitlePlaceholder']"}
  NEW_ESTIMATE = {css: "div[id='b20-b20-b2-NewTitlePlaceholder']"}
  SHOW_INACTIVES = {css: "input[id$='SwitchShowInactives']"}
  ID_COLUMN = {css: "input[id='b20-b20-b5-Input_SearchVar']"}
  ID_COLUMN_CLEAR = {xpath: "/html/body/div[1]/div/div/div/div/div/div/div/div[3]/div/section/section/div/div[2]/article/div/div/div/div/div/div[2]/table/thead/tr/th[2]/div[3]/div/i"}
  NAME_COLUMN = {css: "input[id='b20-b20-b7-Input_SearchVar']"}
  NAME_COLUMN_CLEAR = {xpath: "/html/body/div[1]/div/div/div/div/div/div/div/div[3]/div/section/section/div/div[2]/article/div/div/div/div/div/div[2]/table/thead/tr/th[3]/div[3]/div/div/i[2]"}
  SEARCH_RESET = {css: "i[title='Grid is currently being filtered. Click to remove all filters.']"}

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

  def new_estimate()
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait.until {@driver.find_element(GRID_MENU).displayed?}
    wait.until {@driver.find_element(TOP_REF).displayed?}
    grid_actions = @driver.find_element(GRID_MENU)
    grid_actions.click
    wait.until {@driver.find_element(NEW_ESTIMATE).displayed?}
    option = @driver.find_element(NEW_ESTIMATE)
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


end
