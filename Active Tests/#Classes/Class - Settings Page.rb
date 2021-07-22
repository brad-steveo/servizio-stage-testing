class SettingsResource

  #CSS Selectors: General Business
  SETTINGS_OPTN = {css: "a[id$='Sidebar_Settings']"}
  ANNOUNCEMENTS_OPTN = {css: "a[href^='Announcements']"}
  CONTACTS_OPTN = {css: "a[href^='Contacts']"}
  CREWS_OPTN = {css: "a[href^='Crews']"}
  CUSTOMERASSETS_OPTN = {css: "a[href^='Assets']"}
  EMPLOYEES_OPTN = {css: "a[href^='Employees']"}
  DOCUMENTS_OPTN = {css: "a[href^='Documents']"}
  TIMEENTRIES_OPTN = {css: "a[href^='TimeEntries']"}
  TIMESHEETS_OPTN = {css: "a[href^='Timesheets']"}
  INVOICELINES_OPTN = {css: "a[href^='InvoiceLines']"}
  JOBLINES_OPTN = {css: "a[href^='JobLines']"}
  PRODUCTSANDSERVICES_OPTN = {css: "a[href^='Items']"}
  PRODUCTCATEGORIES_OPTN = {css: "a[href^='ItemCategories']"}
  RELEASENOTES_OPTN = {css: "a[href^='ReleaseNotes']"}
  ROYALTIES_OPTN = {css: "a[href^='Royalties']"}

  #CSS Selectors: Lists
  ASSETCATEGORIES_OPTN = {css: "a[href^='AssetCategories']"}
  CLASSES_OPTN = {css: "a[href^='Classes']"}
  PAYMENTMETHODS_OPTN = {css: "a[href^='PaymentMethods']"}
  PRICEAGREEMENTS_OPTN = {css: "a[href^='PriceAgreements']"}
  TERMS_OPTN = {css: "a[href^='Terms']"}
  TRUCKS_OPTN = {css: "a[href^='Trucks']"}
  RMAS_OPTN = {css: "a[href^='RMAs']"}

  #CSS Selectors: Setup
  COMPANYSETTINGS_OPTN = {css: "a[href^='CompanySettings']"}
  CHARTOFACCOUNTS_OPTN = {css: "a[href^='Accounts']"}
  DEPARTMENTS_OPTN = {css: "a[href^='Departments']"}
  LOCATIONS_OPTN = {css: "a[href^='Locations']"}
  PAYMENTPROCESSING_OPTN = {css: "a[href^='PaymentProcessing']"}
  ROLES_OPTN = {css: "a[href^='Roles2']"}
  TAXRATESANDAGENCIES_OPTN = {css: "a[href^='Tax']"}

  #CSS Selectors: Anchors
  JOBLINES_TOP_REFNUMBER = {xpath: "/html/body/form/div[3]/div[3]/div[1]/div[2]/div[1]/div[3]/span/table/tbody/tr[1]/td[1]/span"}

  attr_reader :driver

  def initialize(driver)
    @driver = driver
  end

  #Class Methods: General Business
  def open_settings()
    @driver.manage.window.resize_to(1400, 1024)
    i = 0
    loopcount = 5
    loop do
      i += 1
      begin
      wait = Selenium::WebDriver::Wait.new(:timeout => 10)
      wait.until {@driver.find_element(SETTINGS_OPTN).displayed?}
      rescue Selenium::WebDriver::Error::StaleElementReferenceError
        false
      end
      if @driver.find_element(SETTINGS_OPTN).displayed? == true
        break
      end
      if i == loopcount
        raise StaleError
      end
    end
    settings_button = @driver.find_element(SETTINGS_OPTN)
    settings_button.click
  end

  def open_dev_settings()
    i = 0
    loopcount = 5
    loop do
      i += 1
      begin
      wait = Selenium::WebDriver::Wait.new(:timeout => 10)
      wait.until {@driver.find_element(SETTINGS_OPTN).displayed?}
      rescue Selenium::WebDriver::Error::StaleElementReferenceError
        false
      end
      if @driver.find_element(SETTINGS_OPTN).displayed? == true
        break
      end
      if i == loopcount
        raise StaleError
      end
    end
    settings_button = @driver.find_element(SETTINGS_OPTN)
    settings_button.click
  end

  def open_contacts()
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(CONTACTS_OPTN).displayed?}
    contacts_selection = @driver.find_element(CONTACTS_OPTN)
    contacts_selection.click
    wait2 = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait2.until {@driver.find_element(class: "Counter_Message").text != "0 records"}
  end

  def open_crews()
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(CREWS_OPTN).displayed?}
    crews_selection = @driver.find_element(CREWS_OPTN)
    crews_selection.click
    wait2 = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait2.until {@driver.find_element(class: "Counter_Message").text != "0 records"}
  end

  def open_customerassets()
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(CUSTOMERASSETS_OPTN).displayed?}
    customerassets_selection = @driver.find_element(CUSTOMERASSETS_OPTN)
    customerassets_selection.click
  end

  def open_employees()
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(EMPLOYEES_OPTN).displayed?}
    employees_selection = @driver.find_element(EMPLOYEES_OPTN)
    employees_selection.click
    wait2 = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait2.until {@driver.find_element(class: "Counter_Message").text != "0 records"}
  end

  def open_documents()
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(DOCUMENTS_OPTN).displayed?}
    documents_selection = @driver.find_element(DOCUMENTS_OPTN)
    documents_selection.click
    wait2 = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait2.until {@driver.find_element(class: "Counter_Message").text != "0 records"}
  end

  def open_timeentries()
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(TIMEENTRIES_OPTN).displayed?}
    timeentries_selection = @driver.find_element(TIMEENTRIES_OPTN)
    timeentries_selection.click
    wait2 = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait2.until {@driver.find_element(class: "Counter_Message").text != "0 records"}
  end

  def open_timesheets()
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(TIMESHEETS_OPTN).displayed?}
    timesheets_selection = @driver.find_element(TIMESHEETS_OPTN)
    timesheets_selection.click
    wait2 = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait2.until {@driver.find_element(class: "Counter_Message").text != "0 records"}
  end

  def open_invoicelines()
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(INVOICELINES_OPTN).displayed?}
    invoicelines_selection = @driver.find_element(INVOICELINES_OPTN)
    invoicelines_selection.click
    wait2 = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait2.until {@driver.find_element(class: "Counter_Message").text != "0 records"}
  end

  def open_joblines()
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(JOBLINES_OPTN).displayed?}
    joblines_selection = @driver.find_element(JOBLINES_OPTN)
    joblines_selection.click
    wait2 = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait2.until {@driver.find_element(class: "Counter_Message").text != "0 records"}
    wait3 = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait3.until {@driver.find_element(JOBLINES_TOP_REFNUMBER).displayed?}
  end

  def open_productsandservices()
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(PRODUCTSANDSERVICES_OPTN).displayed?}
    productsandservices_selection = @driver.find_element(PRODUCTSANDSERVICES_OPTN)
    productsandservices_selection.click
    wait2 = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait2.until {@driver.find_element(class: "Counter_Message").text != "0 records"}
  end

  def open_productcategories()
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(PRODUCTCATEGORIES_OPTN).displayed?}
    productcategories_selection = @driver.find_element(PRODUCTCATEGORIES_OPTN)
    productcategories_selection.click
  end

  def open_announcements()
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(ANNOUNCEMENTS_OPTN).displayed?}
    announcements_selection = @driver.find_element(ANNOUNCEMENTS_OPTN)
    announcements_selection.click
  end

  def open_releasenotes()
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(RELEASENOTES_OPTN).displayed?}
    releasenotes_selection = @driver.find_element(RELEASENOTES_OPTN)
    releasenotes_selection.click
    wait2 = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait2.until {@driver.find_element(class: "Counter_Message").text != "0 records"}
  end

  def open_royalties()
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(ROYALTIES_OPTN).displayed?}
    royalties_selection = @driver.find_element(ROYALTIES_OPTN)
    royalties_selection.click
  end

  #CSS Methods: Lists
  def open_assetcategories()
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(ASSETCATEGORIES_OPTN).displayed?}
    assetcategories_selection = @driver.find_element(ASSETCATEGORIES_OPTN)
    assetcategories_selection.click
  end

  def open_classes()
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(CLASSES_OPTN).displayed?}
    classes_selection = @driver.find_element(CLASSES_OPTN)
    classes_selection.click
    wait2 = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait2.until {@driver.find_element(class: "Counter_Message").text != "0 records"}
  end

  def open_paymentmethods()
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(PAYMENTMETHODS_OPTN).displayed?}
    paymentmethods_selection = @driver.find_element(PAYMENTMETHODS_OPTN)
    paymentmethods_selection.click
    wait2 = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait2.until {@driver.find_element(class: "Counter_Message").text != "0 records"}
  end

  def open_priceagreements()
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(PRICEAGREEMENTS_OPTN).displayed?}
    priceagreements_selection = @driver.find_element(PRICEAGREEMENTS_OPTN)
    priceagreements_selection.click
    wait2 = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait2.until {@driver.find_element(class: "Counter_Message").text != "0 records"}
  end

  def open_terms()
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(TERMS_OPTN).displayed?}
    terms_selection = @driver.find_element(TERMS_OPTN)
    terms_selection.click
    wait2 = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait2.until {@driver.find_element(class: "Counter_Message").text != "0 records"}
  end

  def open_trucks()
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(TRUCKS_OPTN).displayed?}
    trucks_selection = @driver.find_element(TRUCKS_OPTN)
    trucks_selection.click
    wait2 = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait2.until {@driver.find_element(class: "Counter_Message").text != "0 records"}
  end

  def open_rmas()
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(RMAS_OPTN).displayed?}
    rmas_selection = @driver.find_element(RMAS_OPTN)
    rmas_selection.click
  end

  #CSS Methods: Setup
  def open_companysettings()
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(COMPANYSETTINGS_OPTN).displayed?}
    companysettings_selection = @driver.find_element(COMPANYSETTINGS_OPTN)
    companysettings_selection.click
  end

  def open_chartofaccounts()
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(CHARTOFACCOUNTS_OPTN).displayed?}
    chartofaccounts_selection = @driver.find_element(CHARTOFACCOUNTS_OPTN)
    chartofaccounts_selection.click
  end

  def open_departments()
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(DEPARTMENTS_OPTN).displayed?}
    departments_selection = @driver.find_element(DEPARTMENTS_OPTN)
    departments_selection.click
    wait2 = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait2.until {@driver.find_element(class: "Counter_Message").text != "0 records"}
  end

  def open_locations()
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(LOCATIONS_OPTN).displayed?}
    locations_selection = @driver.find_element(LOCATIONS_OPTN)
    locations_selection.click
    wait2 = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait2.until {@driver.find_element(class: "Counter_Message").text != "0 records"}
  end

  def open_paymentprocessing()
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(PAYMENTPROCESSING_OPTN).displayed?}
    paymentprocessing_selection = @driver.find_element(PAYMENTPROCESSING_OPTN)
    paymentprocessing_selection.click
  end

  def open_roles()
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(ROLES_OPTN).displayed?}
    roles_selection = @driver.find_element(ROLES_OPTN)
    roles_selection.click
    wait2 = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait2.until {@driver.find_element(class: "Counter_Message").text != "0 records"}
  end

  def open_taxratesandagencies()
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(TAXRATESANDAGENCIES_OPTN).displayed?}
    taxrates_selection = @driver.find_element(TAXRATESANDAGENCIES_OPTN)
    taxrates_selection.click
    wait2 = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait2.until {@driver.find_element(class: "Counter_Message").text != "0 records"}
  end

end
