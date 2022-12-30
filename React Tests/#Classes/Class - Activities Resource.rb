class ActivitiesResource

  #CSS Selectors: Grid
  TOP_REF = {xpath: "/html/body/div[1]/div/div/div/div/div[1]/div/div/div[3]/div/section/section/div/div[2]/article/div/div/div/div/div/div[2]/table/tbody/tr[1]/td[2]/div/a/span"}
  GRID_ACTIONS = {css: "div[class='dropdown-header select']"}
  EXPORT_GRID = {css: "div[id$='ExportTitlePlaceholder']"}

  #CSS Selectors: Detail
  REASON_DROPDOWN = {css: "select[id='b24-b33-ReasonDropdown']"}
  CONTACT_METHOD_DROPDOWN = {css: "select[id='b24-b33-Dropdown2']"}
  DESCRIPTION = {css: "textarea[id='b24-b33-TextArea_Description']"}
  COMPLETE_ACTIVITY_CHECKBOX = {css: "input[id='b24-b33-CompleteActivityCheckbox']"}
  SAVE_CLOSE_BUTTON = {css: "button[id='b24-b33-SaveAndCloseButton']"}

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

  #Class Methods: Detail
  def reason(reasonselect)
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait.until {@driver.find_element(REASON_DROPDOWN).displayed?}
    dropdown_list = @driver.find_element(REASON_DROPDOWN)
    options = dropdown_list.find_elements(tag_name: 'option')
    options.each {|option| option.click if option.text == (reasonselect)}
  end

  def contact_method(contactmethodselect)
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait.until {@driver.find_element(CONTACT_METHOD_DROPDOWN).displayed?}
    dropdown_list = @driver.find_element(CONTACT_METHOD_DROPDOWN)
    options = dropdown_list.find_elements(tag_name: 'option')
    options.each {|option| option.click if option.text == (contactmethodselect)}
  end

  def description(activitydescription)
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
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
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait.until {@driver.find_element(SAVE_CLOSE_BUTTON).displayed?}
    button = @driver.find_element(SAVE_CLOSE_BUTTON)
    button.click
    sleep(2)
  end

end
