class ContractsResource

    #CSS Selectors: Grid
  
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
  