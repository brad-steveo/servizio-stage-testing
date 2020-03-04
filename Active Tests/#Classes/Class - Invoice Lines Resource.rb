class InvoiceLinesResource

  #CSS Selectors: Grid
  TOP_REFNUMBER = {xpath: "/html/body/form/div[3]/div[3]/div[1]/div[2]/div[1]/div[3]/span/table/tbody/tr[1]/td[1]/span"}
  TOP_INVOICEREFNUMBER = {css: "a[id$='InvoiceLineTable_ctl03_wtInvoiceReflink']"}
  TOP_ITEMNAME = {xpath: "/html/body/form/div[3]/div[3]/div[1]/div[2]/div[1]/div[3]/span/table/tbody/tr[1]/td[3]"}
  TOP_CUSTOMERNAME = {xpath: "/html/body/form/div[3]/div[3]/div[1]/div[2]/div[1]/div[3]/span/table/tbody/tr[1]/td[4]/a/div"}
  TOP_LINENUMBER = {xpath: "/html/body/form/div[3]/div[3]/div[1]/div[2]/div[1]/div[3]/span/table/tbody/tr[1]/td[9]/div"}
  TOP_DESCRIPTION = {xpath: "/html/body/form/div[3]/div[3]/div[1]/div[2]/div[1]/div[3]/span/table/tbody/tr[1]/td[10]"}
  SEARCH_FIELD = {css: "input[id$='SearchInput']"}
  SEARCH_BTN = {css: "input[value='Search']"}
  RESET_BTN = {css: "input[value='Reset']"}
  GRID_OPTIONS_DROPDOWN = {xpath: "/html/body/form/div[3]/div[3]/div[1]/div[2]/div[1]/div[2]/div[2]/div[2]/div/div[1]/div/span"}
    EXPORT_INVOICELINES = {css: "a[id$='ExportGridLink']"}
    SHOW_INACTIVES = {css: "input[id$='ShowInactivesCheckbox']"}
  GRID_TOTAL = {class: "Counter_Message"}
  ID_COLUMN = {css: "input[id$='wtInvoiceLineTable_ctl02_wtIdSearchTextInput']"}
  INVOICEID_COLUMN = {css: "input[id$='wtInvoiceLineTable_ctl02_wtInvoiceIdSearchTextInput']"}
  ITEMNAME_COLUMN = {css: "input[id$='wtInvoiceLineTable_ctl02_wtItemNameSearchTextInput']"}
  CUSTOMER_COLUMN = {css: "input[id$='wtInvoiceLineTable_ctl02_wtCustomerNameSearchTextInput']"}

  attr_reader :driver

  def initialize(driver)
    @driver = driver
  end

  #CSS Methods: Grid
  def top_refnumber()
    top_record = @driver.find_element(TOP_REFNUMBER)
  end

  def top_invoiceid()
    top_record = @driver.find_element(TOP_INVOICEREFNUMBER)
  end

  def top_itemname()
    top_record = @driver.find_element(TOP_ITEMNAME)
  end

  def top_customername()
    top_record = @driver.find_element(TOP_CUSTOMERNAME)
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
    wait_for {@driver.find_element(TOP_INVOICEREFNUMBER).displayed?}
    top_record = @driver.find_element(TOP_INVOICEREFNUMBER)
    top_record.click
    sleep(2)
    @driver.switch_to.frame(0)
  end

  def search_invoicelines(searchname)
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(SEARCH_FIELD).displayed?}
    invoiceline_search = @driver.find_element(SEARCH_FIELD)
    invoiceline_search.send_keys(searchname)
    wait2 = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait2.until {@driver.find_element(SEARCH_BTN).displayed?}
    search_confirm = @driver.find_element(SEARCH_BTN)
    search_confirm.click
    wait3 = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait3.until {(@driver.find_element(TOP_CUSTOMERNAME).text.downcase + @driver.find_element(TOP_ITEMNAME).text.downcase).include?(searchname.downcase)}
  end

  def search_id(searchname)
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(ID_COLUMN).displayed?}
    invoiceline_search = @driver.find_element(ID_COLUMN)
    invoiceline_search.send_keys(searchname)
    wait2 = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait2.until {@driver.find_element(TOP_REFNUMBER).text.include?(searchname)}
  end

  def search_invoiceid(searchname)
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(INVOICEID_COLUMN).displayed?}
    invoiceline_search = @driver.find_element(INVOICEID_COLUMN)
    invoiceline_search.send_keys(searchname)
    wait2 = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait2.until {@driver.find_element(TOP_INVOICEREFNUMBER).text.include?(searchname)}
  end

  def search_itemname(searchname)
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(ITEMNAME_COLUMN).displayed?}
    invoiceline_search = @driver.find_element(ITEMNAME_COLUMN)
    invoiceline_search.send_keys(searchname)
    wait2 = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait2.until {@driver.find_element(TOP_ITEMNAME).text.downcase.include?(searchname.downcase)}
  end

  def search_reset()
    def wait_for()
      Selenium::WebDriver::Wait.new(:timeout => 5).until {yield}
    end
    wait_for {@driver.find_element(RESET_BTN).displayed?}
    search_reset = @driver.find_element(RESET_BTN)
    search_reset.click
    sleep(2)
  end

  def grid_options()
    def wait_for()
      Selenium::WebDriver::Wait.new(:timeout => 5).until {yield}
    end
    wait_for {@driver.find_element(GRID_OPTIONS_DROPDOWN).displayed?}
    grid_options = @driver.find_element(GRID_OPTIONS_DROPDOWN)
    grid_options.click
  end

  def export_invoicelines()
    def wait_for()
      Selenium::WebDriver::Wait.new(:timeout => 5).until {yield}
    end
    wait_for {@driver.find_element(EXPORT_INVOICELINES).displayed?}
    export_invoicelines = @driver.find_element(EXPORT_INVOICELINES)
    export_invoicelines.click
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
    navigationStart = driver.execute_script("return window.performance.timing.navigationStart")
    responseStart = driver.execute_script("return window.performance.timing.responseStart")
    domComplete = driver.execute_script("return window.performance.timing.domComplete")
    loadPerformance = domComplete - navigationStart
    def wait_for
      Selenium::WebDriver::Wait.new(:timeout => 20).until { yield }
    end
    wait_for {driver.find_element(GRID_TOTAL).text != "0 records" }
    invoicelines_records = driver.find_element(GRID_TOTAL)
    invoicelines_count = invoicelines_records.text
    print "Invoice Lines: \n"
    print "%s \n" % invoicelines_count
    print "Load Time: %s ms \n\n" % loadPerformance
  end

end
