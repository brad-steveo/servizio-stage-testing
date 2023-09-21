class ContactsResource

  #CSS Selectors: Grid
  TOP_REF = {xpath: "/html/body/div[1]/div/div/div/div/div/div/div/div[3]/div[3]/section/section/div/div[2]/article/div/div/div/div/div/div[2]/table/tbody/tr[1]/td[2]/div/div/div/a/span"}
  TOP_NAME = {xpath: "/html/body/div[1]/div/div/div/div/div/div/div/div[3]/div[3]/section/section/div/div[2]/article/div/div/div/div/div/div[2]/table/tbody/tr[1]/td[3]"}
  TOP_ACTIONS = {xpath: "/html/body/div[1]/div/div/div/div/div/div/div/div[3]/div[3]/section/section/div/div[2]/article/div/div/div/div/div/div[2]/table/tbody/tr[1]/td[1]/div/div/div/div/div/div[1]/div/i"}
    GRID_MAKE_INACTIVE = {css: "span[id$='GridActionsMakeInactive']"}
  GRID_MENU = {css: "div[class='dropdown-header select']"}
    NEW_CONTACT = {css: "div[id$='NewTitlePlaceholder']"}
    EXPORT_GRID = {css: "div[id$='ExportTitlePlaceholder']"}
  ID_COLUMN = {css: "input[id$='b5-ColumnSearchID']"}
  ID_COLUMN_CLEAR = {xpath: "/html/body/div[1]/div/div/div/div/div/div/div/div[3]/div[3]/section/section/div/div[2]/article/div/div/div/div/div/div[2]/table/thead/tr/th[2]/div[3]/div/i"}
  NAME_COLUMN = {css: "input[id$='b7-Input_SearchVar']"}
  NAME_COLUMN_CLEAR = {xpath: "/html/body/div[1]/div/div/div/div/div/div/div/div[3]/div[3]/section/section/div/div[2]/article/div/div/div/div/div/div[2]/table/thead/tr/th[3]/div[3]/div/div/i[2]"}
  SEARCH_RESET = {css: "i[title='Grid is currently being filtered. Click to remove all filters.']"}

  #CSS Selectors: Detail
  NAME_FIELD = {css: "input[id$='Input_Name']"}
  JOB_TITLE_FIELD = {css: "input[id$='Input_JobTitle']"}
  PHONE_FIELD_1 = {css: "input[id$='0-Input_Phone']"}
  EMAIL_FIELD_1 = {css: "input[id$='0-Input_Email']"}
  DESCRIPTION_TEXTAREA = {css: "textarea[id$='TextArea_Description']"}
  CANCEL_BUTTON = {css: "button[id$='b34-CancelButton']"}
  SAVE_BUTTON = {css: "button[id$='b34-SaveButton']"}
  SAVE_CLOSE_BUTTON = {css: "button[id$='b34-SaveAndCloseButton']"}

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
  def name(contactname)
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait.until {@driver.find_element(NAME_FIELD).displayed?}
    field = @driver.find_element(NAME_FIELD)
    field.send_keys(contactname)
  end

  def job_title(jobtitleinput)
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait.until {@driver.find_element(JOB_TITLE_FIELD).displayed?}
    field = @driver.find_element(JOB_TITLE_FIELD)
    field.send_keys(jobtitleinput)
  end

  def phone(phoneinput)
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait.until {@driver.find_element(PHONE_FIELD_1).displayed?}
    field = @driver.find_element(PHONE_FIELD_1)
    field.send_keys(phoneinput)
  end

  def email(emailinput)
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait.until {@driver.find_element(EMAIL_FIELD_1).displayed?}
    field = @driver.find_element(EMAIL_FIELD_1)
    field.send_keys(emailinput)
  end

  def description(descriptioninput)
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait.until {@driver.find_element(DESCRIPTION_TEXTAREA).displayed?}
    field = @driver.find_element(DESCRIPTION_TEXTAREA)
    field.send_keys(descriptioninput)
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
    sleep(2)
  end

end
