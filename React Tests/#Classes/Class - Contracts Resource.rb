class ContractsResource

    #CSS Selectors: Grid
    TOP_REF = {xpath: "/html/body/div[1]/div/div/div/div/div[1]/div/div/div[3]/div[2]/section/section/div/div[2]/article/div/div/div/div/div/div[2]/table/tbody/tr[1]/td[2]/div/div/div[1]/a/span"}
    TOP_NAME = {xpath: "/html/body/div[1]/div/div/div/div/div[1]/div/div/div[3]/div[2]/section/section/div/div[2]/article/div/div/div/div/div/div[2]/table/tbody/tr[1]/td[3]/span"}
    GRID_MENU = {css: "div[class='dropdown-header select']"}
      NEW_CONTRACT = {css: "div[id$='NewTitlePlaceholder']"}
      EXPORT_GRID = {css: "div[id$='ExportTitlePlaceholder']"}
      SHOW_INACTIVES = {css: "input[id$='SwitchShowInactives']"}
    ID_COLUMN = {css: "input[id$='b5-ColumnSearchID']"}
    ID_COLUMN_CLEAR = {xpath: "/html/body/div[1]/div/div/div/div/div[1]/div/div/div[3]/div[2]/section/section/div/div[2]/article/div/div/div/div/div/div[2]/table/thead/tr/th[2]/div[2]/div/div/i"}
    NAME_COLUMN = {css: "input[id$='b7-Input_SearchVar']"}
    NAME_COLUMN_CLEAR = {xpath: "/html/body/div[1]/div/div/div/div/div[1]/div/div/div[3]/div[2]/section/section/div/div[2]/article/div/div/div/div/div/div[2]/table/thead/tr/th[3]/div[2]/div/div/div/i[2]"}
    SEARCH_RESET = {css: "i[title='Grid is currently being filtered. Click to remove all filters.']"}
  
    #CSS Selectors: Detail
    NAME_FIELD = {css: "input[id$='Input_Name']"}
    INSTALLMENT_AMOUNT_FIELD = {css: "input[id$='Input_InstallmentAmount']"}
    CUSTOMER_SELECT = {xpath: "/html/body/div[1]/div/div/div/div/div[1]/div/div/div[3]/div[2]/section/section/div/div[3]/article/div/div/div/div/div[1]/form/div/div/div[1]/div[3]/div[3]/button"}
      CUSTOMER_SEARCH = {css: "input[id$='CustomerSearch']"}
      TOP_CUSTOMER_SELECT = {xpath: "/html/body/div[9]/div/div/div/div/div/div[2]/div/div/div/div[2]/div/div/div/div/div[3]/button"}
    DETAILS_TEXTAREA = {css: "textarea[id$='TextArea_Details']"}
    COVERAGES_TEXTAREA = {css: "textarea[id$='TextArea_Coverages']"}
    SPECIAL_INSTRUCTIONS_TEXTAREA = {css: "textarea[id$='TextArea_SpecialInstructions']"}
    LOCATION_DROPDOWN = {css: "select[id$='LocationDropdown']"}
    AE_DROPDOWN = {css: "select[id$='AccountExecDropdown']"}
    TYPE_DROPDOWN = {css: "select[id$='TypeDropdown']"}
    CANCEL_BUTTON = #{css: "button[id$='ActivityCancelButton']"}
    SAVE_BUTTON = {css: "button[id$='SaveButton']"}
    SAVE_CLOSE_BUTTON = {css: "button[id$='SaveAndCloseButton']"}

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

    def new_contract()
      wait = Selenium::WebDriver::Wait.new(:timeout => 10)
      wait.until {@driver.find_element(GRID_MENU).displayed?}
      grid_actions = @driver.find_element(GRID_MENU)
      grid_actions.click
      wait.until {@driver.find_element(NEW_CONTRACT).displayed?}
      export_grid = @driver.find_element(NEW_CONTRACT)
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
    def name(contractname)
      wait = Selenium::WebDriver::Wait.new(:timeout => 10)
      wait.until {@driver.find_element(NAME_FIELD).displayed?}
      field = @driver.find_element(NAME_FIELD)
      field.send_keys(contractname)
    end
  
    def installment_amount(installmentinput)
      wait = Selenium::WebDriver::Wait.new(:timeout => 10)
      wait.until {@driver.find_element(INSTALLMENT_AMOUNT_FIELD).displayed?}
      field = @driver.find_element(INSTALLMENT_AMOUNT_FIELD)
      field.send_keys(installmentinput)
    end

    def link_customer(customername)
      wait = Selenium::WebDriver::Wait.new(:timeout => 10)
      wait.until {@driver.find_element(CUSTOMER_SELECT).displayed?}
      button1 = @driver.find_element(CUSTOMER_SELECT)
      button1.click
      wait.until {@driver.find_element(CUSTOMER_SEARCH).displayed?}
      field = @driver.find_element(CUSTOMER_SEARCH)
      field.send_keys(customername)
      sleep(1)
      @driver.action.send_keys(:enter).perform
      sleep(1)
      wait.until {@driver.find_element(TOP_CUSTOMER_SELECT).displayed?}
      select = @driver.find_element(TOP_CUSTOMER_SELECT)
      select.click
      sleep(2)
    end
  
    def details(detailsinput)
      wait = Selenium::WebDriver::Wait.new(:timeout => 10)
      wait.until {@driver.find_element(DETAILS_TEXTAREA).displayed?}
      field = @driver.find_element(DETAILS_TEXTAREA)
      field.send_keys(detailsinput)
    end

    def coverages(coveragesinput)
      wait = Selenium::WebDriver::Wait.new(:timeout => 10)
      wait.until {@driver.find_element(COVERAGES_TEXTAREA).displayed?}
      field = @driver.find_element(COVERAGES_TEXTAREA)
      field.send_keys(coveragesinput)
    end

    def special_instructions(specialinstructionsinput)
      wait = Selenium::WebDriver::Wait.new(:timeout => 10)
      wait.until {@driver.find_element(SPECIAL_INSTRUCTIONS_TEXTAREA).displayed?}
      field = @driver.find_element(SPECIAL_INSTRUCTIONS_TEXTAREA)
      field.send_keys(specialinstructionsinput)
    end

    def location(locationselect)
      wait = Selenium::WebDriver::Wait.new(:timeout => 10)
      wait.until {@driver.find_element(LOCATION_DROPDOWN).displayed?}
      dropdown_list = @driver.find_element(LOCATION_DROPDOWN)
      options = dropdown_list.find_elements(tag_name: 'option')
      options.each {|option| option.click if option.text == (locationselect)}
    end

    def account_executive(aeselect)
      wait = Selenium::WebDriver::Wait.new(:timeout => 10)
      wait.until {@driver.find_element(AE_DROPDOWN).displayed?}
      dropdown_list = @driver.find_element(AE_DROPDOWN)
      options = dropdown_list.find_elements(tag_name: 'option')
      options.each {|option| option.click if option.text == (aeselect)}
    end

    def type(typeselect)
      wait = Selenium::WebDriver::Wait.new(:timeout => 10)
      wait.until {@driver.find_element(TYPE_DROPDOWN).displayed?}
      dropdown_list = @driver.find_element(TYPE_DROPDOWN)
      options = dropdown_list.find_elements(tag_name: 'option')
      options.each {|option| option.click if option.text == (typeselect)}
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
  