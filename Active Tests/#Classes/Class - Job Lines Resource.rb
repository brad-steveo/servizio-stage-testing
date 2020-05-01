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

  #Frame Anchors
  JOB_NAME_FIELD = {css: "input[id$='Job_Name']"}

  #Custom Errors
  class FrameError < StandardError
    def initialize(msg='Unable to switch to frame and locate element')
      super
    end
  end

  class StaleError < StandardError
    def initialize(msg='Stale reference error')
      super
    end
  end

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
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(TOP_JOBNAME).displayed?}
    top_record = @driver.find_element(TOP_JOBNAME)
    top_record.click
    loop do
      i += 1
      @driver.switch_to.frame(0)
      begin
        wait2 = Selenium::WebDriver::Wait.new(:timeout => 2)
        wait2.until {@driver.find_element(JOB_NAME_FIELD).displayed?}
      rescue Selenium::WebDriver::Error::TimeOutError
        false
      end
      if
        begin
          @driver.find_element(JOB_NAME_FIELD).displayed? == true
        rescue Selenium::WebDriver::Error::NoSuchElementError
          false
        end
        break
      end
      if i == loopcount
        raise FrameError
      end
    end
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
    i = 0
    loopcount = 5
    loop do
      wait = Selenium::WebDriver::Wait.new(:timeout => 5)
      if
        begin
          wait.until {@driver.find_element(ID_COLUMN).displayed?} == true
        rescue Selenium::WebDriver::Error::StaleElementReferenceError
          false
        end
        break
        if i == loopcount
          raise StaleError
        end
      end
    end
    jobline_search = @driver.find_element(ID_COLUMN)
    jobline_search.send_keys(searchname)
    wait2 = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait2.until {@driver.find_element(TOP_REFNUMBER).text.include?(searchname)}
  end

  def search_id_field()
    field = @driver.find_element(ID_COLUMN)
  end

  def search_itemname(searchname)
    i = 0
    loopcount = 5
    loop do
      wait = Selenium::WebDriver::Wait.new(:timeout => 5)
      if
        begin
          wait.until {@driver.find_element(ITEMNAME_COLUMN).displayed?} == true
        rescue Selenium::WebDriver::Error::StaleElementReferenceError
          false
        end
        break
        if i == loopcount
          raise StaleError
        end
      end
    end
    jobline_search = @driver.find_element(ITEMNAME_COLUMN)
    jobline_search.send_keys(searchname)
    wait2 = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait2.until {@driver.find_element(TOP_ITEMNAME).text.downcase.include?(searchname.downcase)}
  end

  def search_itemname_field()
    field = @driver.find_element(ITEMNAME_COLUMN)
  end

  def search_jobname(searchname)
    i = 0
    loopcount = 5
    loop do
      wait = Selenium::WebDriver::Wait.new(:timeout => 5)
      if
        begin
          wait.until {@driver.find_element(JOBNAME_COLUMN).displayed?} == true
        rescue Selenium::WebDriver::Error::StaleElementReferenceError
          false
        end
        break
        if i == loopcount
          raise StaleError
        end
      end
    end
    jobline_search = @driver.find_element(JOBNAME_COLUMN)
    jobline_search.send_keys(searchname)
    wait2 = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait2.until {@driver.find_element(TOP_JOBNAME).text.downcase.include?(searchname.downcase)}
  end

  def search_jobname_field()
    field = @driver.find_element(JOBNAME_COLUMN)
  end

  def search_reset()
    currentrecords = @driver.find_element(class: "Counter_Message").text
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(RESET_BTN).displayed?}
    search_reset = @driver.find_element(RESET_BTN)
    search_reset.click
    wait2 = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait2.until {@driver.find_element(class: "Counter_Message").text != currentrecords}
  end

  def grid_options()
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(GRID_OPTIONS_DROPDOWN).displayed?}
    grid_options = @driver.find_element(GRID_OPTIONS_DROPDOWN)
    grid_options.click
  end

  def export_joblines()
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(EXPORT_JOBLINES).displayed?}
    export_joblines = @driver.find_element(EXPORT_JOBLINES)
    export_joblines.click
  end

  def show_inactives()
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(SHOW_INACTIVES).displayed?}
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
