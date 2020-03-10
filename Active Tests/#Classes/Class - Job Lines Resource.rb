class JobLinesResource

  #CSS Selectors: Grid
  TOP_REFNUMBER = {xpath: "/html/body/form/div[3]/div[3]/div[1]/div[2]/div[1]/div[3]/span/table/tbody/tr[1]/td[1]/span"}
  TOP_ITEMNAME = {xpath: "/html/body/form/div[3]/div[3]/div[1]/div[2]/div[1]/div[3]/span/table/tbody/tr[1]/td[2]"}
  TOP_JOBNAME = {css: "a[href^='JobPopup']"}
  TOP_LINENUMBER = {xpath: "/html/body/form/div[3]/div[3]/div[1]/div[2]/div[1]/div[3]/span/table/tbody/tr[1]/td[8]/div"}
  TOP_DESCRIPTION = {xpath: "/html/body/form/div[3]/div[3]/div[1]/div[2]/div[1]/div[3]/span/table/tbody/tr[1]/td[10]"}
  SEARCH_FIELD = {css: "input[id$='SearchInput']"}
  SEARCH_BTN = {css: "input[value='Search']"}
  RESET_BTN = {css: "input[value='Reset']"}
  GRID_OPTIONS_DROPDOWN = {xpath: "/html/body/form/div[3]/div[3]/div[1]/div[2]/div[1]/div[2]/div[2]/div[2]/div/div[1]/div/span"}
    EXPORT_JOBLINES = {css: "a[id$='ExportGridLink']"}
    SHOW_INACTIVES = {css: "input[id$='ShowInactivesCheckbox']"}
  GRID_TOTAL = {class: "Counter_Message"}
  ID_COLUMN = {css: "input[id$='wtJobLineTable_ctl02_wtIdSearchTextInput']"}
  ITEMNAME_COLUMN = {css: "input[id$='wtJobLineTable_ctl02_wtItemNameSearchTextInput']"}
  JOBNAME_COLUMN = {css: "input[id$='wtJobLineTable_ctl02_wtJobNameSearchTextInput']"}

  attr_reader :driver

  def initialize(driver)
    @driver = driver
  end

  #CSS Methods: Grid
  def top_refnumber()
    top_record = @driver.find_element(TOP_REFNUMBER)
  end

  def top_itemname()
    top_record = @driver.find_element(TOP_ITEMNAME)
  end

  def top_jobname()
    top_record = @driver.find_element(TOP_JOBNAME)
  end

  def top_linenumber()
    top_record = @driver.find_element(TOP_LINENUMBER)
  end

  def top_description()
    top_record = @driver.find_element(TOP_DESCRIPTION)
  end

  def top_open()
    def wait_for()
      Selenium::WebDriver::Wait.new(:timeout => 5).until {yield}
    end
    wait_for {@driver.find_element(TOP_JOBNAME).displayed?}
    top_record = @driver.find_element(TOP_JOBNAME)
    top_record.click
    sleep(2)
    @driver.switch_to.frame(0)
  end

  def search_joblines(searchname)
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(SEARCH_FIELD).displayed?}
    jobline_search = @driver.find_element(SEARCH_FIELD)
    jobline_search.send_keys(searchname)
    wait2 = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait2.until {@driver.find_element(SEARCH_BTN).displayed?}
    search_confirm = @driver.find_element(SEARCH_BTN)
    search_confirm.click
    wait3 = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait3.until {(@driver.find_element(TOP_ITEMNAME).text.downcase + @driver.find_element(TOP_JOBNAME).text.downcase).include?(searchname.downcase)}
  end

  def search_id(searchname)
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(ID_COLUMN).displayed?}
    jobline_search = @driver.find_element(ID_COLUMN)
    jobline_search.send_keys(searchname)
    wait2 = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait2.until {@driver.find_element(TOP_REFNUMBER).text.include?(searchname)}
  end

  def search_itemname(searchname)
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(ITEMNAME_COLUMN).displayed?}
    jobline_search = @driver.find_element(ITEMNAME_COLUMN)
    jobline_search.send_keys(searchname)
    wait2 = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait2.until {@driver.find_element(TOP_ITEMNAME).text.downcase.include?(searchname.downcase)}
  end

  def search_jobname(searchname)
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(JOBNAME_COLUMN).displayed?}
    jobline_search = @driver.find_element(JOBNAME_COLUMN)
    jobline_search.send_keys(searchname)
    wait2 = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait2.until {@driver.find_element(TOP_JOBNAME).text.downcase.include?(searchname.downcase)}
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

  def export_joblines()
    def wait_for()
      Selenium::WebDriver::Wait.new(:timeout => 5).until {yield}
    end
    wait_for {@driver.find_element(EXPORT_JOBLINES).displayed?}
    export_joblines = @driver.find_element(EXPORT_JOBLINES)
    export_joblines.click
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
    joblines_records = @driver.find_element(GRID_TOTAL)
    joblines_count = joblines_records.text
    print "Job Lines: \n"
    print "%s \n" % joblines_count
    print "Load Time: %s ms \n\n" % loadPerformance
  end

end
