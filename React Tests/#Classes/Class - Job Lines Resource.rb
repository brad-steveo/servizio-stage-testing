class JobLinesResource

    #CSS Selectors: Grid
    TOP_REF = {xpath: "/html/body/div[1]/div/div/div/div/div[1]/div/div/div[3]/div[2]/section/section/div/div[2]/article/div/div/div/div/div/div[2]/table/tbody/tr[1]/td[2]/div/div/div[1]/div/span"}
    TOP_NAME = {xpath: "/html/body/div[1]/div/div/div/div/div[1]/div/div/div[3]/div[2]/section/section/div/div[2]/article/div/div/div/div/div/div[2]/table/tbody/tr[1]/td[3]/span"}
    TOP_DESCRIPTION = {xpath: "/html/body/div[1]/div/div/div/div/div[1]/div/div/div[3]/div[2]/section/section/div/div[2]/article/div/div/div/div/div/div[2]/table/tbody/tr[1]/td[13]/span"}
    GRID_MENU = {css: "div[class='dropdown-header select']"}
    EXPORT_GRID = {css: "div[id$='ExportTitlePlaceholder']"}
    SHOW_INACTIVES = {css: "input[id$='SwitchShowInactives']"}
    ID_COLUMN = {css: "input[id$='b5-ColumnSearchID']"}
    ID_COLUMN_CLEAR = {xpath: "/html/body/div[1]/div/div/div/div/div[1]/div/div/div[3]/div[2]/section/section/div/div[2]/article/div/div/div/div/div/div[2]/table/thead/tr/th[2]/div[2]/div/div/i"}
    NAME_COLUMN = {css: "input[id$='b7-Input_SearchVar']"}
    NAME_COLUMN_CLEAR = {xpath: "/html/body/div[1]/div/div/div/div/div[1]/div/div/div[3]/div[2]/section/section/div/div[2]/article/div/div/div/div/div/div[2]/table/thead/tr/th[3]/div[2]/div/div/div/i[2]"}
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

    def top_description()
      wait = Selenium::WebDriver::Wait.new(:timeout => 10)
      wait.until {@driver.find_element(TOP_DESCRIPTION).displayed?}
      top_record = @driver.find_element(TOP_DESCRIPTION)
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
  
  end