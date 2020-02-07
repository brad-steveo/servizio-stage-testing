class SettingsResource

  #CSS Selectors: General Business
  SETTINGS_OPTN = {css: "a[id$='Sidebar_Settings']"}
  ACTIVITIES_OPTN = {css: "a[href^='Activities']"}
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

  attr_reader :driver

  def initialize(driver)
    @driver = driver
  end

  #Class Methods: General Business
  def open_settings()
    @driver.manage.window.resize_to(1400, 1024)
    def wait_for()
      Selenium::WebDriver::Wait.new(:timeout => 5).until {yield}
    end
    wait_for {@driver.find_element(SETTINGS_OPTN).displayed?}
    settings_button = @driver.find_element(SETTINGS_OPTN)
    settings_button.click
  end

  def open_activities()
    def wait_for()
      Selenium::WebDriver::Wait.new(:timeout => 5).until {yield}
    end
    wait_for {@driver.find_element(ACTIVITIES_OPTN).displayed?}
    activities_selection = @driver.find_element(ACTIVITIES_OPTN)
    activities_selection.click
  end

  def open_contacts()
    def wait_for()
      Selenium::WebDriver::Wait.new(:timeout => 5).until {yield}
    end
    wait_for {@driver.find_element(CONTACTS_OPTN).displayed?}
    contacts_selection = @driver.find_element(CONTACTS_OPTN)
    contacts_selection.click
    def wait_for2()
    	Selenium::WebDriver::Wait.new(:timeout => 5).until {yield}
    end
      wait_for2 {@driver.find_element(class: "Counter_Message").text != "0 records" }
  end

  def open_crews()
    crews_selection = @driver.find_element(CREWS_OPTN)
    crews_selection.click
    def wait_for2()
      Selenium::WebDriver::Wait.new(:timeout => 5).until {yield}
    end
      wait_for2 {@driver.find_element(class: "Counter_Message").text != "0 records" }
  end

  def open_customerassets()
    customerassets_selection = @driver.find_element(CUSTOMERASSETS_OPTN)
    customerassets_selection.click
  end

  def open_employees()
    employees_selection = @driver.find_element(EMPLOYEES_OPTN)
    employees_selection.click
    def wait_for2()
      Selenium::WebDriver::Wait.new(:timeout => 5).until {yield}
    end
      wait_for2 {@driver.find_element(class: "Counter_Message").text != "0 records" }
  end

  def open_documents()
    documents_selection = @driver.find_element(DOCUMENTS_OPTN)
    documents_selection.click
    def wait_for2()
      Selenium::WebDriver::Wait.new(:timeout => 5).until {yield}
    end
      wait_for2 {@driver.find_element(class: "Counter_Message").text != "0 records" }
  end

  def open_timeentries()
    timeentries_selection = @driver.find_element(TIMEENTRIES_OPTN)
    timeentries_selection.click
    def wait_for2()
      Selenium::WebDriver::Wait.new(:timeout => 5).until {yield}
    end
      wait_for2 {@driver.find_element(class: "Counter_Message").text != "0 records" }
  end

  def open_timesheets()
    timesheets_selection = @driver.find_element(TIMESHEETS_OPTN)
    timesheets_selection.click
    def wait_for2()
      Selenium::WebDriver::Wait.new(:timeout => 5).until {yield}
    end
      wait_for2 {@driver.find_element(class: "Counter_Message").text != "0 records" }
  end

  def open_invoicelines()
    invoicelines_selection = @driver.find_element(INVOICELINES_OPTN)
    invoicelines_selection.click
    def wait_for2()
      Selenium::WebDriver::Wait.new(:timeout => 5).until {yield}
    end
      wait_for2 {@driver.find_element(class: "Counter_Message").text != "0 records" }
  end

  def open_joblines()
    joblines_selection = @driver.find_element(JOBLINES_OPTN)
    joblines_selection.click
    def wait_for2()
      Selenium::WebDriver::Wait.new(:timeout => 5).until {yield}
    end
      wait_for2 {@driver.find_element(class: "Counter_Message").text != "0 records" }
  end

  def open_productsandservices()
    productsandservices_selection = @driver.find_element(PRODUCTSANDSERVICES_OPTN)
    productsandservices_selection.click
    def wait_for2()
      Selenium::WebDriver::Wait.new(:timeout => 5).until {yield}
    end
      wait_for2 {@driver.find_element(class: "Counter_Message").text != "0 records" }
  end

  def open_productcategories()
    productcategories_selection = @driver.find_element(PRODUCTCATEGORIES_OPTN)
    productcategories_selection.click
  end

  def open_announcements()
    announcements_selection = @driver.find_element(ANNOUNCEMENTS_OPTN)
    announcements_selection.click
  end

  def open_releasenotes()
    releasenotes_selection = @driver.find_element(RELEASENOTES_OPTN)
    releasenotes_selection.click
    def wait_for2()
      Selenium::WebDriver::Wait.new(:timeout => 5).until {yield}
    end
      wait_for2 {@driver.find_element(class: "Counter_Message").text != "0 records" }
  end

  def open_royalties()
    royalties_selection = @driver.find_element(ROYALTIES_OPTN)
    royalties_selection.click
  end

  #CSS Methods: Lists
  def open_assetcategories()
    assetcategories_selection = @driver.find_element(ASSETCATEGORIES_OPTN)
    assetcategories_selection.click
  end

  def open_classes()
    classes_selection = @driver.find_element(CLASSES_OPTN)
    classes_selection.click
    def wait_for2()
      Selenium::WebDriver::Wait.new(:timeout => 5).until {yield}
    end
      wait_for2 {@driver.find_element(class: "Counter_Message").text != "0 records" }
  end

  def open_paymentmethods()
    paymentmethods_selection = @driver.find_element(PAYMENTMETHODS_OPTN)
    paymentmethods_selection.click
    def wait_for2()
      Selenium::WebDriver::Wait.new(:timeout => 5).until {yield}
    end
      wait_for2 {@driver.find_element(class: "Counter_Message").text != "0 records" }
  end

  def open_priceagreements()
    priceagreements_selection = @driver.find_element(PRICEAGREEMENTS_OPTN)
    priceagreements_selection.click
    def wait_for2()
      Selenium::WebDriver::Wait.new(:timeout => 5).until {yield}
    end
      wait_for2 {@driver.find_element(class: "Counter_Message").text != "0 records" }
  end

  def open_terms()
    terms_selection = @driver.find_element(TERMS_OPTN)
    terms_selection.click
    def wait_for2()
      Selenium::WebDriver::Wait.new(:timeout => 5).until {yield}
    end
      wait_for2 {@driver.find_element(class: "Counter_Message").text != "0 records" }
  end

  def open_trucks()
    trucks_selection = @driver.find_element(TRUCKS_OPTN)
    trucks_selection.click
    def wait_for2()
      Selenium::WebDriver::Wait.new(:timeout => 5).until {yield}
    end
      wait_for2 {@driver.find_element(class: "Counter_Message").text != "0 records" }
  end

  def open_rmas()
    rmas_selection = @driver.find_element(RMAS_OPTN)
    rmas_selection.click
  end

  #CSS Methods: Setup
  def open_companysettings()
    companysettings_selection = @driver.find_element(COMPANYSETTINGS_OPTN)
    companysettings_selection.click
  end

  def open_chartofaccounts()
    chartofaccounts_selection = @driver.find_element(CHARTOFACCOUNTS_OPTN)
    chartofaccounts_selection.click
  end

  def open_departments()
    departments_selection = @driver.find_element(DEPARTMENTS_OPTN)
    departments_selection.click
    def wait_for2()
      Selenium::WebDriver::Wait.new(:timeout => 5).until {yield}
    end
      wait_for2 {@driver.find_element(class: "Counter_Message").text != "0 records" }
  end

  def open_locations()
    locations_selection = @driver.find_element(LOCATIONS_OPTN)
    locations_selection.click
    def wait_for2()
      Selenium::WebDriver::Wait.new(:timeout => 5).until {yield}
    end
      wait_for2 {@driver.find_element(class: "Counter_Message").text != "0 records" }
  end

  def open_paymentprocessing()
    paymentprocessing_selection = @driver.find_element(PAYMENTPROCESSING_OPTN)
    paymentprocessing_selection.click
  end

  def open_roles()
    roles_selection = @driver.find_element(ROLES_OPTN)
    roles_selection.click
    def wait_for2()
      Selenium::WebDriver::Wait.new(:timeout => 5).until {yield}
    end
      wait_for2 {@driver.find_element(class: "Counter_Message").text != "0 records" }
  end

  def open_taxratesandagencies()
    taxrates_selection = @driver.find_element(TAXRATESANDAGENCIES_OPTN)
    taxrates_selection.click
    def wait_for2()
      Selenium::WebDriver::Wait.new(:timeout => 5).until {yield}
    end
      wait_for2 {@driver.find_element(class: "Counter_Message").text != "0 records" }
  end

end
