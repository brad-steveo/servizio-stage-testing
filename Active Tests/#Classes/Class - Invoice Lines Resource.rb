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
  GRID_OPTIONS_DROPDOWN = {xpath: "/html/body/form/div[3]/div[3]/div[1]/div[2]/div[1]/div[2]/div[2]/div/div/div[1]/div/span"}
    EXPORT_INVOICELINES = {css: "a[id$='ExportGridLink']"}
    SHOW_INACTIVES = {css: "input[id$='ShowInactivesCheckbox']"}
  GRID_TOTAL = {class: "Counter_Message"}
  ID_COLUMN = {css: "input[id$='wtInvoiceLineTable_ctl02_wtIdSearchTextInput']"}
  INVOICEID_COLUMN = {css: "input[id$='wtInvoiceLineTable_ctl02_wtInvoiceIdSearchTextInput']"}
  ITEMNAME_COLUMN = {css: "input[id$='wtInvoiceLineTable_ctl02_wtItemNameSearchTextInput']"}
  CUSTOMER_COLUMN = {css: "input[id$='wtInvoiceLineTable_ctl02_wtCustomerNameSearchTextInput']"}

  #Frame Anchors
  INVOICE_PONUMBER_FIELD = {css: "input[id$='Invoice_PONumber']"}

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

  def resource_open()
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait.until {@driver.find_element(TOP_REFNUMBER).displayed? == true}
  end

  def top_open()
    i = 0
    loopcount = 5
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(TOP_INVOICEREFNUMBER).displayed?}
    top_record = @driver.find_element(TOP_INVOICEREFNUMBER)
    top_record.click
    loop do
      i += 1
      @driver.switch_to.frame(0)
      begin
        wait2 = Selenium::WebDriver::Wait.new(:timeout => 2)
        wait2.until {@driver.find_element(INVOICE_PONUMBER_FIELD).displayed?}
      rescue Selenium::WebDriver::Error::TimeOutError
        false
      end
      if
        begin
          @driver.find_element(INVOICE_PONUMBER_FIELD).displayed? == true
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
    invoiceline_search = @driver.find_element(ID_COLUMN)
    invoiceline_search.send_keys(searchname)
    @driver.action.send_keys(:enter).perform
    wait2 = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait2.until {@driver.find_element(TOP_REFNUMBER).text.include?(searchname)}
  end

  def search_id_field()
    field = @driver.find_element(ID_COLUMN)
  end

  def search_invoiceid(searchname)
    i = 0
    loopcount = 5
    loop do
      wait = Selenium::WebDriver::Wait.new(:timeout => 5)
      if
        begin
          wait.until {@driver.find_element(INVOICEID_COLUMN).displayed?} == true
        rescue Selenium::WebDriver::Error::StaleElementReferenceError
          false
        end
        break
        if i == loopcount
          raise StaleError
        end
      end
    end
    invoiceline_search = @driver.find_element(INVOICEID_COLUMN)
    invoiceline_search.send_keys(searchname)
    @driver.action.send_keys(:enter).perform
    wait2 = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait2.until {@driver.find_element(TOP_INVOICEREFNUMBER).text.include?(searchname)}
  end

  def search_invoiceid_field()
    field = @driver.find_element(INVOICEID_COLUMN)
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
    invoiceline_search = @driver.find_element(ITEMNAME_COLUMN)
    invoiceline_search.send_keys(searchname)
    @driver.action.send_keys(:enter).perform
    wait2 = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait2.until {@driver.find_element(TOP_ITEMNAME).text.downcase.include?(searchname.downcase)}
  end

  def search_itemname_field()
    field = @driver.find_element(ITEMNAME_COLUMN)
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

  def export_invoicelines()
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(EXPORT_INVOICELINES).displayed?}
    export_invoicelines = @driver.find_element(EXPORT_INVOICELINES)
    export_invoicelines.click
    sleep(2)
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
    invoicelines_records = @driver.find_element(GRID_TOTAL)
    invoicelines_count = invoicelines_records.text
    print "Invoice Lines: \n"
    print "%s \n" % invoicelines_count
    print "Load Time: %s ms \n\n" % loadPerformance
  end

end
