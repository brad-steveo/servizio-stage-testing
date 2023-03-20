class CustomersResource

  #CSS Selectors: Grid
  TOP_REF = {xpath: "/html/body/div[1]/div/div/div/div/div/div/div/div[3]/div/section/section/div/div[2]/article/div/div/div/div/div/div[2]/table/tbody/tr[1]/td[2]/div/div/div[1]/a/span"}
  TOP_NAME = {xpath: "/html/body/div[1]/div/div/div/div/div/div/div/div[3]/div/section/section/div/div[2]/article/div/div/div/div/div/div[2]/table/tbody/tr[1]/td[3]/div[1]/span"}
  TOP_ACTIONS = {xpath: "/html/body/div[1]/div/div/div/div/div/div/div/div[3]/div/section/section/div/div[2]/article/div/div/div/div/div/div[2]/table/tbody/tr[1]/td[1]/div/div/div/div[1]/div/i"}
  TOP_BILLING_CONTACT = {xpath: "/html/body/div[1]/div/div/div/div/div[1]/div/div/div[3]/div[2]/section/section/div/div[2]/article/div/div/div/div/div/div[2]/table/tbody/tr[1]/td[16]"}
  TOP_SITE_CONTACT = {xpath: "/html/body/div[1]/div/div/div/div/div[1]/div/div/div[3]/div[2]/section/section/div/div[2]/article/div/div/div/div/div/div[2]/table/tbody/tr[1]/td[15]"}
  GRID_MENU = {css: "div[class='dropdown-header select']"}
    GRID_CREATE_ACTIVITY = {css: "span[id='b20-b8-l1_0-455_0-b48-GridActionsCreateActivity']"}
  EXPORT_GRID = {css: "div[id$='ExportTitlePlaceholder']"}
  NEW_CUSTOMER = {css: "div[id$='NewTitlePlaceholder']"}
  ID_COLUMN = {css: "input[id$='b5-ColumnSearchID']"}
  ID_COLUMN_CLEAR = {xpath: "/html/body/div[1]/div/div/div/div/div/div/div/div[3]/div/section/section/div/div[2]/article/div/div/div/div/div/div[2]/table/thead/tr/th[2]/div[2]/div/div/i"}
  NAME_COLUMN = {css: "input[id$='b7-Input_SearchVar']"}
  NAME_COLUMN_CLEAR = {xpath: "/html/body/div[1]/div/div/div/div/div/div/div/div[3]/div/section/section/div/div[2]/article/div/div/div/div/div/div[2]/table/thead/tr/th[3]/div[2]/div/div/div/i[2]"}
  SEARCH_RESET = {css: "i[title='Grid is currently being filtered. Click to remove all filters.']"}

  #CSS Selectors: Detail
  NAME_FIELD = {css: "input[id$='Input_DisplayName']"}
  DBA_NAME_FIELD = {css: "input[id$='Input_DBAName']"}
  LOCATION_DROPDOWN = {css: "select[id$='Locations']"}
  STAGE_DROPDOWN = {css: "select[id$='CustomerStageCombobox']"}
  TYPE_DROPDOWN = {css: "select[id$='Type']"}
  PATROL_TYPE_DROPDOWN = {css: "select[id$='PatrolType']"}
  SOURCE_DROPDOWN = {css: "select[id$='SourceDropDown']"}
  PHONE_FIELD = {css: "input[id$='Input_Phone']"}
  TIME_ZONE_DROPDOWN = {css: "select[id$='TimeZoneDropDown']"}
  AE_DROPDOWN = {css: "select[id$='AccountExecDropdown']"}
  SPECIAL_INSTRUCTIONS_TEXTAREA = {css: "textarea[id$='TextArea_SpecialInstructions']"}
  PATROL_INSTRUCTIONS_TEXTAREA = {css: "textarea[id$='TextArea_PatrolInstructions']"}
  BILLINGNAME = {css: "input[id$='Input_BillAddress1']"}
  BILLINGSTREET = {css: "textarea[id$='TextArea_BillingAddress']"}
  BILLINGCITY = {css: "input[id$='Input_BillCity']"}
  BILLINGSTATE = {css: "input[id$='Input_BillCountrySubDivisionCode']"}
  BILLINGZIP = {css: "input[id$='Input_BillPostalCode']"}
  BILLINGCOUNTRY = {css: "input[id$='Input_BillCountry']"}
  COPTYTOSITE = {xpath: "/html/body/div[1]/div/div/div/div/div[1]/div/div/div[3]/div/section/section/div/div[3]/article/div/div/div/div/div[1]/div/div/section/section/div/div[1]/article/div/div[1]/div[2]/div[2]/a/img"}
  LINK_EXISTING_BUTTON = {css: "button[id$='LinkExisting']"}
  LINK_CONTACT_SEARCH = {css: "input[id$='ContactSearch']"}
  LINK_CONTACT_TOP_NAME = {xpath: "/html/body/div[6]/div/div/div/div/div/div[4]/div/div[1]/div/div/div[2]/div[1]/span"}
  LINK_CONTACT_TOP_SELECT = {xpath: "/html/body/div[6]/div/div/div/div/div/div[4]/div/div[1]/div/div/div[3]/button"}
  ADD_NEW_BUTTON = {css: "button[id$='AddNew']"}
  TOP_CONTACT_NAME = {xpath: "/html/body/div[1]/div/div/div/div/div[1]/div/div/div[3]/div[2]/section/section/div/div[4]/article/div/div/div/div/div[1]/div/div/section/section/div/div[1]/article/div/div[3]/div/div/table/tbody/tr[1]/td[1]/div/a/span"}
  TOP_CONTACT_BILLING_CHECKBOX = {css: "input[id$='0-CheckboxBilling']"}
  TOP_CONTACT_SITE_CHECKBOX = {css: "input[id$='0-CheckboxSite']"}
  TOP_CONTACT_REMOVE = {xpath: "/html/body/div[1]/div/div/div/div/div[1]/div/div/div[3]/div[2]/section/section/div/div[4]/article/div/div/div/div/div[1]/div/div/section/section/div/div[1]/article/div/div[3]/div/div/table/tbody/tr[1]/td[9]/a/i"}
  ACTIVITIES_SUBTAB = {xpath: "/html/body/div[1]/div/div/div/div/div[1]/div/div/div[3]/div/section/section/div/div[3]/article/div/div/div/div/div[1]/div/div/section/header/div[1]/div[3]/button/div/span"}
    ACTIVITIES_ID_COLUMN = {xpath: "/html/body/div[1]/div/div/div/div/div[1]/div/div/div[3]/div/section/section/div/div[3]/article/div/div/div/div/div[1]/div/div/section/section/div/div[3]/article/div/table/thead/tr/th[1]"}
    TOP_ACTIVITY_REF = {xpath: "/html/body/div[1]/div/div/div/div/div[1]/div/div/div[3]/div/section/section/div/div[3]/article/div/div/div/div/div[1]/div/div/section/section/div/div[3]/article/div/table/tbody/tr/td[1]/a/span"}
    TOP_ACTIVITY_DESCRIPTION = {xpath: "/html/body/div[1]/div/div/div/div/div[1]/div/div/div[3]/div/section/section/div/div[3]/article/div/div/div/div/div[1]/div/div/section/section/div/div[3]/article/div/table/tbody/tr/td[6]/span"}
    THIRD_TAB = {xpath: "/html/body/div[1]/div/div/div/div/div[1]/div/div/div[3]/div/section/header/div[1]/div[4]/button/div/span"}
  DETAIL_ACTIONS_MENU = {css: "div[id='b23-b9-b51-b1-DropdownHeaderContent_placeholder']"}
    DETAIL_CREATE_ACTIVITY = {css: "span[id='b23-b9-b51-GridActionsCreateActivity']"}
  CANCEL_BUTTON = {css: "button[id$='CustomerCancelButton']"}
  SAVE_BUTTON = {css: "button[id$='CustomerSaveButton']"}
  SAVE_CLOSE_BUTTON = {css: "button[id$='CustomerSaveAndCloseButton']"}

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

  def top_billing_contact()
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait.until {@driver.find_element(TOP_BILLING_CONTACT).displayed?}
    top_record = @driver.find_element(TOP_BILLING_CONTACT)
  end

  def top_site_contact()
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait.until {@driver.find_element(TOP_SITE_CONTACT).displayed?}
    top_record = @driver.find_element(TOP_SITE_CONTACT)
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

  def new_customer()
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait.until {@driver.find_element(GRID_MENU).displayed?}
    grid_actions = @driver.find_element(GRID_MENU)
    grid_actions.click
    wait.until {@driver.find_element(NEW_CUSTOMER).displayed?}
    new_customer = @driver.find_element(NEW_CUSTOMER)
    new_customer.click
    sleep(6)
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

  #Class Methods: Detail
  def name(customername)
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait.until {@driver.find_element(NAME_FIELD).displayed?}
    field = @driver.find_element(NAME_FIELD)
    field.send_keys(customername)
  end

  def dba_name(dbaname)
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait.until {@driver.find_element(DBA_NAME_FIELD).displayed?}
    field = @driver.find_element(DBA_NAME_FIELD)
    field.send_keys(dbaname)
  end

  def location(locationselect)
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait.until {@driver.find_element(LOCATION_DROPDOWN).displayed?}
    dropdown_list = @driver.find_element(LOCATION_DROPDOWN)
    options = dropdown_list.find_elements(tag_name: 'option')
    options.each {|option| option.click if option.text == (locationselect)}
  end

  def stage(stageselect)
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait.until {@driver.find_element(STAGE_DROPDOWN).displayed?}
    dropdown_list = @driver.find_element(STAGE_DROPDOWN)
    options = dropdown_list.find_elements(tag_name: 'option')
    options.each {|option| option.click if option.text == (stageselect)}
  end

  def type(typeselect)
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait.until {@driver.find_element(TYPE_DROPDOWN).displayed?}
    dropdown_list = @driver.find_element(TYPE_DROPDOWN)
    options = dropdown_list.find_elements(tag_name: 'option')
    options.each {|option| option.click if option.text == (typeselect)}
  end

  def patrol_type(patroltypeselect)
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait.until {@driver.find_element(PATROL_TYPE_DROPDOWN).displayed?}
    dropdown_list = @driver.find_element(PATROL_TYPE_DROPDOWN)
    options = dropdown_list.find_elements(tag_name: 'option')
    options.each {|option| option.click if option.text == (patroltypeselect)}
  end

  def source(sourceselect)
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait.until {@driver.find_element(SOURCE_DROPDOWN).displayed?}
    dropdown_list = @driver.find_element(SOURCE_DROPDOWN)
    options = dropdown_list.find_elements(tag_name: 'option')
    options.each {|option| option.click if option.text == (sourceselect)}
  end

  def phone(phoneinput)
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait.until {@driver.find_element(PHONE_FIELD).displayed?}
    field = @driver.find_element(PHONE_FIELD)
    field.send_keys(phoneinput)
  end

  def timezone(timezoneselect)
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait.until {@driver.find_element(TIME_ZONE_DROPDOWN).displayed?}
    dropdown_list = @driver.find_element(TIME_ZONE_DROPDOWN)
    options = dropdown_list.find_elements(tag_name: 'option')
    options.each {|option| option.click if option.text == (timezoneselect)}
  end

  def account_executive(aeselect)
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait.until {@driver.find_element(AE_DROPDOWN).displayed?}
    dropdown_list = @driver.find_element(AE_DROPDOWN)
    options = dropdown_list.find_elements(tag_name: 'option')
    options.each {|option| option.click if option.text == (aeselect)}
  end

  def special_instructions(specialinstructionsinput)
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait.until {@driver.find_element(SPECIAL_INSTRUCTIONS_TEXTAREA).displayed?}
    field = @driver.find_element(SPECIAL_INSTRUCTIONS_TEXTAREA)
    field.send_keys(specialinstructionsinput)
  end

  def patrol_instructions(patrolinstructions)
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait.until {@driver.find_element(PATROL_INSTRUCTIONS_TEXTAREA).displayed?}
    field = @driver.find_element(PATROL_INSTRUCTIONS_TEXTAREA)
    field.send_keys(patrolinstructions)
  end

  def billing_name(billingnameinput)
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait.until {@driver.find_element(BILLINGNAME).displayed?}
    field = @driver.find_element(BILLINGNAME)
    field.send_keys(billingnameinput)
  end

  def billing_street(billingstreetinput)
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait.until {@driver.find_element(BILLINGSTREET).displayed?}
    field = @driver.find_element(BILLINGSTREET)
    field.send_keys(billingstreetinput)
  end

  def billing_city(billingcityinput)
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait.until {@driver.find_element(BILLINGCITY).displayed?}
    field = @driver.find_element(BILLINGCITY)
    field.send_keys(billingcityinput)
  end

  def billing_state(billingstateinput)
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait.until {@driver.find_element(BILLINGSTATE).displayed?}
    field = @driver.find_element(BILLINGSTATE)
    field.send_keys(billingstateinput)
  end

  def billing_zip(billingzipinput)
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait.until {@driver.find_element(BILLINGZIP).displayed?}
    field = @driver.find_element(BILLINGZIP)
    field.send_keys(billingzipinput)
  end

  def billing_country(billingcountryinput)
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait.until {@driver.find_element(BILLINGCOUNTRY).displayed?}
    field = @driver.find_element(BILLINGCOUNTRY)
    field.send_keys(billingcountryinput)
  end

  def copy_to_site()
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait.until {@driver.find_element(COPTYTOSITE).displayed?}
    option = @driver.find_element(COPTYTOSITE)
    option.click
    sleep(1)
  end

  def link_existing_contact(contactsearch)
    if
      begin
        @driver.find_element(TOP_CONTACT_NAME).exists? == true
      rescue Selenium::WebDriver::Error::NoSuchElementError
        false
      end
      removeicon = @driver.find_element(TOP_CONTACT_REMOVE)
      removeicon.click
      sleep(1)
      wait = Selenium::WebDriver::Wait.new(:timeout => 10)
      wait.until {@driver.find_element(LINK_EXISTING_BUTTON).displayed?}
      button = @driver.find_element(LINK_EXISTING_BUTTON)
      button.click
      sleep(1)
      wait.until {@driver.find_element(LINK_CONTACT_SEARCH).displayed?}
      search = @driver.find_element(LINK_CONTACT_SEARCH)
      search.send_keys(contactsearch)
      sleep(1)
      @driver.action.send_keys(:enter).perform
      sleep(1)
      wait.until {@driver.find_element(LINK_CONTACT_TOP_NAME).text.include?(contactsearch)}
      wait.until {@driver.find_element(LINK_CONTACT_TOP_SELECT).displayed?}
      selectbutton = @driver.find_element(LINK_CONTACT_TOP_SELECT)
      selectbutton.click
      sleep(2)
    else
      wait = Selenium::WebDriver::Wait.new(:timeout => 10)
      wait.until {@driver.find_element(LINK_EXISTING_BUTTON).displayed?}
      button = @driver.find_element(LINK_EXISTING_BUTTON)
      button.click
      sleep(1)
      wait.until {@driver.find_element(LINK_CONTACT_SEARCH).displayed?}
      search = @driver.find_element(LINK_CONTACT_SEARCH)
      search.send_keys(contactsearch)
      sleep(1)
      @driver.action.send_keys(:enter).perform
      sleep(1)
      wait.until {@driver.find_element(LINK_CONTACT_TOP_NAME).text.include?(contactsearch)}
      wait.until {@driver.find_element(LINK_CONTACT_TOP_SELECT).displayed?}
      selectbutton = @driver.find_element(LINK_CONTACT_TOP_SELECT)
      selectbutton.click
      sleep(2)
    end
  end

  def add_new_contact()
    if
      begin
        @driver.find_element(TOP_CONTACT_NAME).exists? == true
      rescue Selenium::WebDriver::Error::NoSuchElementError
        false
      end
      removeicon = @driver.find_element(TOP_CONTACT_REMOVE)
      removeicon.click
      sleep(1)
      wait = Selenium::WebDriver::Wait.new(:timeout => 10)
      wait.until {@driver.find_element(ADD_NEW_BUTTON).displayed?}
      button = @driver.find_element(ADD_NEW_BUTTON)
      button.click
      wait.until {@driver.find_element(THIRD_TAB).displayed?}
      wait.until {@driver.find_element(THIRD_TAB).text.include?("New Contact")}
    else
      wait = Selenium::WebDriver::Wait.new(:timeout => 10)
      wait.until {@driver.find_element(ADD_NEW_BUTTON).displayed?}
      button = @driver.find_element(ADD_NEW_BUTTON)
      button.click
      wait.until {@driver.find_element(THIRD_TAB).displayed?}
      wait.until {@driver.find_element(THIRD_TAB).text.include?("New Contact")}
    end
  end

  def make_top_contact_billing()
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait.until {@driver.find_element(TOP_CONTACT_BILLING_CHECKBOX).displayed?}
    checkbox = @driver.find_element(TOP_CONTACT_BILLING_CHECKBOX)
    checkbox.click
    sleep(2)
  end

  def make_top_contact_site()
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait.until {@driver.find_element(TOP_CONTACT_SITE_CHECKBOX).displayed?}
    checkbox = @driver.find_element(TOP_CONTACT_SITE_CHECKBOX)
    checkbox.click
    sleep(2)
  end

  def top_activity()
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait.until {@driver.find_element(TOP_ACTIVITY_REF).displayed?}
    top = @driver.find_element(TOP_ACTIVITY_REF)
  end

  def top_activity_description()
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait.until {@driver.find_element(TOP_ACTIVITY_DESCRIPTION).displayed?}
    description = @driver.find_element(TOP_ACTIVITY_DESCRIPTION)
  end

  def create_activity()
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait.until {@driver.find_element(ACTIVITIES_SUBTAB).displayed?}
    tab = @driver.find_element(ACTIVITIES_SUBTAB)
    tab.click
    sleep(2)
    wait.until {@driver.find_element(ACTIVITIES_ID_COLUMN).displayed?}
    actions = @driver.find_element(DETAIL_ACTIONS_MENU)
    actions.click
    sleep(2)
    wait.until {@driver.find_element(DETAIL_CREATE_ACTIVITY).displayed?}
    createactivity = @driver.find_element(DETAIL_CREATE_ACTIVITY)
    createactivity.click
    wait.until {@driver.find_element(THIRD_TAB).displayed?}
    wait.until {@driver.find_element(THIRD_TAB).text.include?("New Activity")}
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
