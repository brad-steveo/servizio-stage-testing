class DocumentsResource

  #CSS Selectors: Grid
  TOP_NAME = {xpath: "/html/body/form/div[3]/div[3]/div[1]/div[2]/div[1]/div[3]/span/table/tbody/tr[1]/td[3]/div/span"}
  TOP_RESOURCE = {xpath: "/html/body/form/div[3]/div[3]/div[1]/div[2]/div[1]/div[3]/span/table/tbody/tr[1]/td[9]"}
  TOP_EXTENSION = {xpath: "/html/body/form/div[3]/div[3]/div[1]/div[2]/div[1]/div[3]/span/table/tbody/tr[1]/td[11]"}
  TOP_ACTIONS = {xpath: "/html/body/form/div[3]/div[3]/div[1]/div[2]/div[1]/div[3]/span/table/tbody/tr[1]/td[1]/div/div/div/div[1]/div[1]/span"}
    ACTIONS_DOWNLOAD = {css: "a[id$='GridActionDrop_block_wtMenuLink5_wt199']"}
    ACTIONS_VIEWDOCUMENT = {css: "a[id$='DocumentsLink']"}
    ACTIONS_MAKEINACTIVE = {css: "a[id$='MakeInactiveLink']"}
  SEARCH_FIELD = {css: "input[id$='SearchInput']"}
  SEARCH_BTN = {css: "input[value='Search']"}
  RESET_BTN = {css: "input[value='Reset']"}
  GRID_OPTIONS_DROPDOWN = {xpath: "/html/body/form/div[3]/div[3]/div[1]/div[2]/div[1]/div[2]/div[2]/div[2]/div/div[1]/div/span"}
    EXPORT_DOCUMENTS = {css: "a[id$='ExportGridLink']"}
    SHOW_INACTIVES = {css: "input[id$='ShowInactivesCheckbox']"}
  GRID_TOTAL = {class: "Counter_Message"}
  NAME_COLUMN = {css: "input[id$='DocumentTable_ctl02_wt267']"}
  EXTENSION_COLUMN = {css: "input[id$='DocumentTable_ctl02_wt82']"}

  #CSS Selectors: Popup
  SHOWHIDE_UPLOADER = {xpath: "/html/body/form/div[3]/div[1]/div/div/div[1]/div[2]/a/span"}
  #SHOW_INACTIVES selector and method will work in this popup as well.

  attr_reader :driver

  def initialize(driver)
    @driver = driver
  end

  #CSS Methods: Grid
  def top_name()
    top_record = @driver.find_element(TOP_NAME)
  end

  def top_resource()
    top_record = @driver.find_element(TOP_RESOURCE)
  end

  def top_extension()
    top_record = @driver.find_element(TOP_EXTENSION)
  end

  def top_actions()
    def wait_for()
      Selenium::WebDriver::Wait.new(:timeout => 5).until {yield}
    end
    wait_for {@driver.find_element(TOP_ACTIONS).displayed?}
    top_actions = @driver.find_element(TOP_ACTIONS)
    top_actions.click
  end

  def actions_download()
    def wait_for()
      Selenium::WebDriver::Wait.new(:timeout => 5).until {yield}
    end
    wait_for {@driver.find_element(ACTIONS_DOWNLOAD).displayed?}
    action = @driver.find_element(ACTIONS_DOWNLOAD)
    action.click
  end

  def actions_viewdocument()
    def wait_for()
      Selenium::WebDriver::Wait.new(:timeout => 5).until {yield}
    end
    wait_for {@driver.find_element(ACTIONS_VIEWDOCUMENT).displayed?}
    action = @driver.find_element(ACTIONS_VIEWDOCUMENT)
    action.click
    sleep(2)
    @driver.switch_to.frame(1)
  end

  def actions_makeinactive()
    def wait_for()
      Selenium::WebDriver::Wait.new(:timeout => 5).until {yield}
    end
    wait_for {@driver.find_element(ACTIONS_MAKEINACTIVE).displayed?}
    action = @driver.find_element(ACTIONS_MAKEINACTIVE)
    action.click
  end

  def search_documents(searchname)
    def wait_for()
      Selenium::WebDriver::Wait.new(:timeout => 5).until {yield}
    end
    wait_for {@driver.find_element(SEARCH_FIELD).displayed?}
    document_search = @driver.find_element(SEARCH_FIELD)
    document_search.send_keys(searchname)
    def wait_for2()
      Selenium::WebDriver::Wait.new(:timeout => 5).until {yield}
    end
    wait_for2 {@driver.find_element(SEARCH_BTN).displayed?}
    search_confirm = @driver.find_element(SEARCH_BTN)
    search_confirm.click
    sleep(2)
  end

  def search_name(searchname)
    def wait_for()
      Selenium::WebDriver::Wait.new(:timeout => 5).until {yield}
    end
    wait_for {@driver.find_element(NAME_COLUMN).displayed?}
    documents_search = @driver.find_element(NAME_COLUMN)
    documents_search.send_keys(searchname)
    sleep(3)
  end

  def search_extension(searchname)
    def wait_for()
      Selenium::WebDriver::Wait.new(:timeout => 5).until {yield}
    end
    wait_for {@driver.find_element(EXTENSION_COLUMN).displayed?}
    documents_search = @driver.find_element(EXTENSION_COLUMN)
    documents_search.send_keys(searchname)
    sleep(3)
  end

  def search_reset()
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(RESET_BTN).displayed?}
    search_reset = @driver.find_element(RESET_BTN)
    search_reset.click
  end

  def grid_options()
    def wait_for()
      Selenium::WebDriver::Wait.new(:timeout => 5).until {yield}
    end
    wait_for {@driver.find_element(GRID_OPTIONS_DROPDOWN).displayed?}
    grid_options = @driver.find_element(GRID_OPTIONS_DROPDOWN)
    grid_options.click
  end

  def export_documents()
    def wait_for()
      Selenium::WebDriver::Wait.new(:timeout => 5).until {yield}
    end
    wait_for {@driver.find_element(EXPORT_DOCUMENTS).displayed?}
    export_documents = @driver.find_element(EXPORT_DOCUMENTS)
    export_documents.click
  end

  def show_inactives()
    def wait_for()
      Selenium::WebDriver::Wait.new(:timeout => 5).until {yield}
    end
    wait_for {@driver.find_element(SHOW_INACTIVES).displayed?}
    show_inactives = @driver.find_element(SHOW_INACTIVES)
    show_inactives.click
  end

  def grid_total()
    gridtotal = @driver.find_element(GRID_TOTAL)
  end

  def resource_performance()
    navigationStart = @driver.execute_script("return window.performance.timing.navigationStart")
    responseStart = @driver.execute_script("return window.performance.timing.responseStart")
    domComplete = @driver.execute_script("return window.performance.timing.domComplete")
    loadPerformance = domComplete - navigationStart
    wait = Selenium::WebDriver::Wait.new(:timeout => 20)
    wait.until {@driver.find_element(GRID_TOTAL).text != "0 records"}
    documents_records = @driver.find_element(GRID_TOTAL)
    documents_count = documents_records.text
    print "Documents: \n"
    print "%s \n" % documents_count
    print "Load Time: %s ms \n\n" % loadPerformance
  end

  #CSS Methods: Popup
  def uploader()
    def wait_for()
      Selenium::WebDriver::Wait.new(:timeout => 5).until {yield}
    end
    wait_for {@driver.find_element(SHOWHIDE_UPLOADER).displayed?}
    toggle_uploader = @driver.find_element(SHOWHIDE_UPLOADER)
    toggle_uploader.click
    sleep(2)
  end

end
