class PatrolsResource

  #CSS Selectors
  TOP_REF = {xpath: "/html/body/div[1]/div/div/div/div/div/div/div/div[3]/div/div/div[2]/div/div[2]/div/div/div/div/div/div/div[4]/table/tbody/tr[1]/td[2]/a/span"}
  GRID_ACTIONS = {css: "div[class='dropdown-header select']"}
  NEW_PATROL = {css: "div[id$='NewTitlePlaceholder']"}
  EXPORT_GRID = {css: "div[id$='ExportTitlePlaceholder']"}
  SHOW_INACTIVES = {css: "input[id$='SwitchShowInactives']"}
  OLD_PATROLS = {css: "input[id$='SwitchShowOldPatrols']"}
  ID_COLUMN = {css: "input[id='b20-b4-b6-Input_SearchVar']"}

  attr_reader :driver

  def initialize(driver)
    @driver = driver
  end

  #Class Methods
  def top_ref()
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait.until {@driver.find_element(TOP_REF).displayed?}
    top_record = @driver.find_element(TOP_REF)
  end

  def top_open()
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait.until {@driver.find_element(TOP_REF).displayed?}
    top_record = @driver.find_element(TOP_REF)
    top_record.click
  end

  def new_patrol()
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait.until {@driver.find_element(GRID_ACTIONS).displayed?}
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait.until {@driver.find_element(TOP_REF).displayed?}
    grid_actions = @driver.find_element(GRID_ACTIONS)
    grid_actions.click
    wait.until {@driver.find_element(NEW_PATROL).displayed?}
    option = @driver.find_element(NEW_PATROL)
    option.click
    sleep(2)
  end

  def export_grid()
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait.until {@driver.find_element(GRID_ACTIONS).displayed?}
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait.until {@driver.find_element(TOP_REF).displayed?}
    grid_actions = @driver.find_element(GRID_ACTIONS)
    grid_actions.click
    wait.until {@driver.find_element(EXPORT_GRID).displayed?}
    option = @driver.find_element(EXPORT_GRID)
    option.click
    sleep(2)
  end

  def show_inactives()
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait.until {@driver.find_element(GRID_ACTIONS).displayed?}
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait.until {@driver.find_element(TOP_REF).displayed?}
    grid_actions = @driver.find_element(GRID_ACTIONS)
    grid_actions.click
    wait.until {@driver.find_element(SHOW_INACTIVES).displayed?}
    option = @driver.find_element(SHOW_INACTIVES)
    option.click
    sleep(2)
  end

  def old_patrols()
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait.until {@driver.find_element(GRID_ACTIONS).displayed?}
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait.until {@driver.find_element(TOP_REF).displayed?}
    grid_actions = @driver.find_element(GRID_ACTIONS)
    grid_actions.click
    wait.until {@driver.find_element(OLD_PATROLS).displayed?}
    option = @driver.find_element(OLD_PATROLS)
    option.click
    sleep(2)
    grid_actions = @driver.find_element(GRID_ACTIONS)
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

end
