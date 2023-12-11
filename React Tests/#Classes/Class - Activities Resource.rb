class ActivitiesResource

  #CSS Selectors: Grid
  TOP_REF = {xpath: "/html/body/div[1]/div/div/div/div/div/div/div/div[3]/div[3]/section/section/div/div[2]/article/div/div/div/div/div/div[2]/table/tbody/tr[1]/td[2]/div/div/div[1]/a/span"}
  TOP_DESCRIPTION = {xpath: "/html/body/div[1]/div/div/div/div/div/div/div/div[3]/div[3]/section/section/div/div[2]/article/div/div/div/div/div/div[2]/table/tbody/tr[1]/td[5]"}
  TOP_COMPLETED = {xpath: "/html/body/div[1]/div/div/div/div/div/div/div/div[3]/div[3]/section/section/div/div[2]/article/div/div/div/div/div/div[2]/table/tbody/tr[1]/td[12]/span"}
  GRID_MENU = {css: "div[class='dropdown-header select']"}
  NEW_ACTIVITY = {css: "div[id$='NewTitlePlaceholder']"}
  EXPORT_GRID = {css: "div[id$='ExportTitlePlaceholder']"}
  ID_COLUMN = {css: "input[id$='ColumnSearchID']"}
  ID_COLUMN_CLEAR = {xpath: "/html/body/div[1]/div/div/div/div/div/div/div/div[3]/div[3]/section/section/div/div[2]/article/div/div/div/div/div/div[2]/table/thead/tr/th[2]/div[3]/div/div/i"}
  DESCRIPTION_COLUMN = {css: "input[id$='Input_SearchVar']"}
  DESCRIPTION_COLUMN_CLEAR = {xpath: "/html/body/div[1]/div/div/div/div/div/div/div/div[3]/div[3]/section/section/div/div[2]/article/div/div/div/div/div/div[2]/table/thead/tr/th[5]/div[3]/div/div/div/i[2]"}
  SEARCH_RESET = {css: "div[title='Grid is currently being filtered. Click to remove all filters.']"}
  RESOURCE_REFRESH = {xpath: "/html/body/div[1]/div/div/div/div/div/div/div/div[3]/div[3]/section/section/div/div[2]/article/div/div/div/div/div/div[1]/div[1]/div/div/div[2]/i"}

  #CSS Selectors: Detail
  REASON_DROPDOWN = {css: "select[id$='ReasonDropdown']"}
  CONTACT_METHOD_DROPDOWN = {css: "select[id$='Dropdown2']"}
  DESCRIPTIONCLICK = {xpath: "/html/body/div[2]/div/div/div[1]/div/div/div/div/div[3]/div[3]/section/section/div/div[4]/article/div/div/div/div/div[1]/div/form/div[9]/div[2]"}
  DESCRIPTION = {css: "textarea[id$='ActivityDescription']"}
  COMPLETE_ACTIVITY_CHECKBOX = {css: "input[id$='CompleteActivityCheckbox']"}
  CANCEL_BUTTON = {css: "button[id$='ActivityCancelButton']"}
  SAVE_BUTTON = {css: "button[id$='ActivitySaveButton']"}
  SAVE_CLOSE_BUTTON = {css: "button[id$='ActivitySaveAndCloseButton']"}

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

  def top_description()
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait.until {@driver.find_element(TOP_DESCRIPTION).displayed?}
    top_record = @driver.find_element(TOP_DESCRIPTION)
  end

  def top_completed()
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait.until {@driver.find_element(TOP_COMPLETED).displayed?}
    top_record = @driver.find_element(TOP_COMPLETED)
  end

  def top_open()
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait.until {@driver.find_element(TOP_REF).displayed?}
    top_record = @driver.find_element(TOP_REF)
    top_record.click
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

  def new_activity()
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait.until {@driver.find_element(GRID_MENU).displayed?}
    grid_actions = @driver.find_element(GRID_MENU)
    grid_actions.click
    wait.until {@driver.find_element(NEW_ACTIVITY).displayed?}
    export_grid = @driver.find_element(NEW_ACTIVITY)
    export_grid.click
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

  def search_description(searchname)
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait.until {@driver.find_element(DESCRIPTION_COLUMN).displayed?}
    search = @driver.find_element(DESCRIPTION_COLUMN)
    search.send_keys(searchname)
    sleep(1)
    @driver.action.send_keys(:enter).perform
    sleep(1)
    wait.until {@driver.find_element(TOP_DESCRIPTION).text.downcase.include?(searchname.downcase)}
  end

  def search_description_clear()
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait.until {@driver.find_element(DESCRIPTION_COLUMN_CLEAR).displayed?}
    button = @driver.find_element(DESCRIPTION_COLUMN_CLEAR)
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
  def reason(reasonselect)
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait.until {@driver.find_element(REASON_DROPDOWN).displayed?}
    dropdown_list = @driver.find_element(REASON_DROPDOWN)
    options = dropdown_list.find_elements(tag_name: 'option')
    options.each {|option| option.click if option.text == (reasonselect)}
    sleep(2)
  end

  def contact_method(contactmethodselect)
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait.until {@driver.find_element(CONTACT_METHOD_DROPDOWN).displayed?}
    dropdown_list = @driver.find_element(CONTACT_METHOD_DROPDOWN)
    options = dropdown_list.find_elements(tag_name: 'option')
    options.each {|option| option.click if option.text == (contactmethodselect)}
    sleep(2)
  end

  def description(activitydescription)
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(DESCRIPTION).displayed?}
    field = @driver.find_element(DESCRIPTION)
    field.send_keys(activitydescription)
  end

  def complete_activity_checkbox()
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait.until {@driver.find_element(COMPLETE_ACTIVITY_CHECKBOX).displayed?}
    checkbox = @driver.find_element(COMPLETE_ACTIVITY_CHECKBOX)
    checkbox.click
  end

  def save_close()
    sleep(5)
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait.until {@driver.find_element(SAVE_CLOSE_BUTTON).displayed?}
    button = @driver.find_element(SAVE_CLOSE_BUTTON)
    button.click
    sleep(2)
  end

end
