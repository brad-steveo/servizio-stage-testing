class PatrolsResource

  #CSS Selectors: Grid
  TOP_REF = {xpath: "/html/body/div[1]/div/div/div/div/div[1]/div/div/div[3]/div/section/section/div/div[2]/article/div/div/div/div/div/div[4]/table/tbody/tr[1]/td[2]/a/span"}
  TOP_NAME = {xpath: "/html/body/div[1]/div/div/div/div/div[1]/div/div/div[3]/div/section/section/div/div[2]/article/div/div/div/div/div/div[4]/table/tbody/tr[1]/td[3]/span"}
  GRID_ACTIONS = {css: "div[class='dropdown-header select']"}
  NEW_PATROL = {css: "div[id='b20-b4-b3-NewTitlePlaceholder']"}
  EXPORT_GRID = {css: "div[id$='ExportTitlePlaceholder']"}
  SHOW_INACTIVES = {css: "input[id$='SwitchShowInactives']"}
  OLD_PATROLS = {css: "input[id$='SwitchShowOldPatrols']"}
  ID_COLUMN = {css: "input[id='b20-b4-b6-Input_SearchVar']"}
  NAME_COLUMN = {css: "input[id='b20-b4-b8-Input_SearchVar']"}
  SEARCH_RESET = {css: "i[title='Grid is currently being filtered. Click to remove all filters.']"}
  CUSTOMER_SELECT_SEARCH = {css: "input[id='b22-b5-b7-CustomerSearch']"}
  TOP_CUSTOMER_SELECT = {xpath: "/html/body/div[6]/div/div/div/div/div/div[3]/div/div[1]/div/div/div[3]/button"}

  #CSS Selectors: Detail
  SUBMITTED_NAME_FIELD = {css: "input[id='b22-b5-Input_SubmittedName']"}
  BAD_PATROL_DROPDOWN = {css: "select[id='b22-b5-BadCustomer_Dropdown']"}
  SCOPE_OF_WORK_TEXTAREA = {css: "textarea[id='b22-b5-TextArea_Description']"}
  LOCATION_DROPDOWN = {css: "select[id='b22-b5-Locations']"}
  ACCOUNT_EXECUTIVE_DROPDOWN = {css: "select[id='b22-b5-AccountExecutives']"}
  SAVE_BUTTON = {css: "button[id='b22-b5-SaveButton']"}
  SAVE_CLOSE_BUTTON = {css: "button[id='b22-b5-SaveAndCloseButton']"}


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

  def new_patrol()
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait.until {@driver.find_element(GRID_ACTIONS).displayed?}
    wait.until {@driver.find_element(TOP_REF).displayed?}
    grid_actions = @driver.find_element(GRID_ACTIONS)
    grid_actions.click
    wait.until {@driver.find_element(NEW_PATROL).displayed?}
    option = @driver.find_element(NEW_PATROL)
    option.click
    sleep(2)
    wait.until {@driver.find_element(TOP_CUSTOMER_SELECT).displayed?}
    top_customer = @driver.find_element(TOP_CUSTOMER_SELECT)
    top_customer.click
    wait.until {@driver.find_element(SUBMITTED_NAME_FIELD).displayed?}
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

  def search_reset()
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait.until {@driver.find_element(SEARCH_RESET).displayed?}
    button = @driver.find_element(SEARCH_RESET)
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

  def save_close()
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait.until {@driver.find_element(SAVE_CLOSE_BUTTON).displayed?}
    button = @driver.find_element(SAVE_CLOSE_BUTTON)
    button.click
    sleep(2) #Could maybe use a rescue loop here
  end

end
