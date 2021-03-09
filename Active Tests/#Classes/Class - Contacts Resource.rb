class ContactsResource

  #CSS Selectors: Grid
  CREATE_CONTACT_BTN = {css: "a[id$='AddContactLink']"}
  TOP_CONTACT = {xpath: "/html/body/form/div[3]/div[3]/div[1]/div[2]/div[1]/table/tbody/tr[1]/td[3]/div"}
    TOP_CONTACT_ACTIONS = {xpath: "/html/body/form/div[3]/div[3]/div[1]/div[2]/div[1]/table/tbody/tr[1]/td[1]/div/div/div[1]/div[1]/span"}
      TOP_CONTACT_DOCUMENTS = {css: "a[id$='DocumentsLink']"}
      TOP_CONTACT_INACTIVE = {css: "a[id$='MakeInactiveLink']"}
  TOP_REFNUMBER = {css: "a[id$='ContactTable_ctl03_wtContactIdLink']"}
  TOP_DESCRIPTION = {xpath: "/html/body/form/div[3]/div[3]/div[1]/div[2]/div[1]/table/tbody/tr[1]/td[4]/div"}
  SEARCH_FIELD = {css: "input[id$='SearchInput']"}
  SEARCH_BTN = {css: "input[value='Search']"}
  RESET_BTN = {css: "input[value='Reset']"}
  GRID_OPTIONS_DROPDOWN = {xpath: "/html/body/form/div[3]/div[3]/div[1]/div[2]/div[1]/div[3]/div[2]/div/div[1]/div/span"}
    EXPORT_CONTACTS = {css: "a[id$='ExportGridLink']"}
    FIND_DUPLICATES = {css: "a[id$='FindDuplicateLink']"}
    SHOW_INACTIVES_CHECKBOX = {css: "input[id$='ShowInactivesCheckbox']"}
  GRID_TOTAL = {class: "Counter_Message"}

  #CSS Selectors: Popup
  CONTACT_NAME_FIELD = {css: "input[id$='Contact_Name']"}
  ADD_PHONE_OPTN = {css: "a[id$='wtAddPhoneLink']"}
  ADD_EMAIL_OPTN = {css: "a[id$='wtAddEmailLink']"}
  CONTACT_PHONE_FIRST = {css: "input[id$='ctl00_wtPhoneInput']"}
  CONTACT_PHONE_SECOND = {css: "input[id$='ctl02_wtPhoneInput']"}
  CONTACT_PHONE_THIRD = {css: "input[id$='ctl04_wtPhoneInput']"}
  CONTACT_EMAIL_FIRST = {css: "input[id$='ctl00_wtEmailInput']"}
  CONTACT_EMAIL_SECOND = {css: "input[id$='ctl02_wtEmailInput']"}
  CONTACT_EMAIL_THIRD = {css: "input[id$='ctl04_wtEmailInput']"}
  CONTACT_NOTES_FIELD = {css: "textarea[id$='Contact_Description2']"}
  ACTIONS_BTN = {xpath: "/html/body/form/div[3]/div[1]/div/div[5]/div[3]/div/div/div[1]/div[2]/span"}
    POPUP_INACTIVE = {css: "a[id$='wtMenuLink6_wtMakeInactiveLink']"}
      POPUP_CONFIRM_INACTIVE = {css: "a[class='conf-dialog-button blue']"}
  CANCEL_BTN = {css: "input[value='Cancel']"}
  SAVE_AND_CLOSE_BTN = {css: "input[value='Save and Close']"}

  #CSS Selectors: Contacts Section (Resource Popups)
  CONTACTS_SEARCH_FIELD = {css: "input[id$='wt799_wtSearchTextInput']"}
  SEARCH_CONTACTS_BTN = {css: "input[value='Search']"}
  RESET_CONTACTS_BTN = {css: "input[value='Reset']"}
  SHOW_INACTIVE_CONTACTS = {css: "input[id$='wtMainContent_wt799_wt16']"}
  CREATE_NEW_BTN = {css: "input[value='Create New']"}
  LINK_EXISTING_BTN = {css: "input[value='Link Existing']"}
  FIRST_CONTACT_NAME = {css: "a[id$='ctl03_wtContactLink']"}
  FIRST_CONTACT_NOTES = {xpath: "/html/body/form/div[3]/div[1]/div[2]/div[1]/div[5]/div/span[2]/table/tbody/tr/td[2]"}
  FIRST_BILLING_CHKBX = {css: "input[id$='wtContactTable_ctl03_wt32']"}
  FIRST_SITE_CHKBX = {css: "input[id$='wtContactTable_ctl03_wt37']"}
  SECOND_CONTACT_NAME = {css: "a[id$='wtContactTable_ctl04_wtContactLink']"}
  SECOND_CONTACT_NOTES = {xpath: "/html/body/form/div[3]/div[1]/div[2]/div[1]/div[5]/div/span[2]/table/tbody/tr[2]/td[2]"}
  SECOND_BILLING_CHKBX = {css: "input[id$='wtContactTable_ctl04_wt32']"}
  SECOND_SITE_CHKBX = {css: "input[id$='wtContactTable_ctl04_wt37']"}
  REMOVE_TOP_CONTACT = {css: "input[id$='wtContactTable_ctl03_wtRemoveCustomerContactButton']"}

  #CSS Selectors: Link Contact Popup
  LINK_CONTACT_SEARCH = {css: "input[id$='wtMainContent_wtContactSearchInput']"}
  CANCEL_LINK_BTN = {css: "input[value='Cancel']"}
  CONFIRM_LINK_BTN = {css: "input[value='Link']"}

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

  #Class Methods: Grid
  def create_contact()
    i = 0
    loopcount = 5
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(CREATE_CONTACT_BTN).displayed?}
    create_contact = @driver.find_element(CREATE_CONTACT_BTN)
    create_contact.click
    loop do
      i += 1
      @driver.switch_to.frame(0)
      begin
        wait3 = Selenium::WebDriver::Wait.new(:timeout => 2)
        wait3.until {@driver.find_element(CONTACT_NAME_FIELD).displayed?}
      rescue Selenium::WebDriver::Error::TimeOutError
        false
      end
      if
        begin
          @driver.find_element(CONTACT_NAME_FIELD).displayed? == true
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

  def top()
    top_contact = @driver.find_element(TOP_CONTACT)
  end

  def top_refnumber()
    top_refnumber = @driver.find_element(TOP_REFNUMBER)
  end

  def top_description()
    top_description = @driver.find_element(TOP_DESCRIPTION)
  end

  def top_open()
    i = 0
    loopcount = 5
    top_refnumber = @driver.find_element(TOP_REFNUMBER)
    top_refnumber.click
    loop do
      i += 1
      @driver.switch_to.frame(0)
      begin
        wait3 = Selenium::WebDriver::Wait.new(:timeout => 2)
        wait3.until {@driver.find_element(CONTACT_NAME_FIELD).displayed?}
      rescue Selenium::WebDriver::Error::TimeOutError
        false
      end
      if
        begin
          @driver.find_element(CONTACT_NAME_FIELD).displayed? == true
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

  def top_actions()
    top_contactactions = @driver.find_element(TOP_CONTACT_ACTIONS)
    top_contactactions.click
  end

  def top_documents()
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(TOP_CONTACT_DOCUMENTS).displayed?}
    top_documents = @driver.find_element(TOP_CONTACT_DOCUMENTS)
    top_documents.click
  end

  def top_inactive()
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(TOP_CONTACT_INACTIVE).displayed?}
    top_makeinactive = @driver.find_element(TOP_CONTACT_INACTIVE)
    top_makeinactive.click
  end

  def search_contact(searchname)
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(SEARCH_FIELD).displayed?}
    contact_name = @driver.find_element(SEARCH_FIELD)
    contact_name.send_keys(searchname)
    wait2 = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait2.until {@driver.find_element(SEARCH_BTN).displayed?}
    search_confirm = @driver.find_element(SEARCH_BTN)
    search_confirm.click
    wait3 = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait3.until {(top_refnumber = @driver.find_element(TOP_REFNUMBER).text + top_contact = @driver.find_element(TOP_CONTACT).text.downcase + @driver.find_element(TOP_DESCRIPTION).text.downcase).include?(searchname)}
  end

  def search_reset()
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(RESET_BTN).displayed?}
    search_reset = @driver.find_element(RESET_BTN)
    search_reset.click
  end

  def grid_options()
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(GRID_OPTIONS_DROPDOWN).displayed?}
    grid_options = @driver.find_element(GRID_OPTIONS_DROPDOWN)
    grid_options.click
  end

  def export_contacts()
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(EXPORT_CONTACTS).displayed?}
    export_contacts = @driver.find_element(EXPORT_CONTACTS)
    export_contacts.click
  end

  def find_duplicates()
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(FIND_DUPLICATES).displayed?}
    find_duplicates = @driver.find_element(FIND_DUPLICATES)
    find_duplicates.click
  end

  def show_inactives()
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(SHOW_INACTIVES_CHECKBOX).displayed?}
    show_inactives = @driver.find_element(SHOW_INACTIVES_CHECKBOX)
    show_inactives.click
  end

  def resource_performance()
    navigationStart = @driver.execute_script("return window.performance.timing.navigationStart")
    responseStart = @driver.execute_script("return window.performance.timing.responseStart")
    domComplete = @driver.execute_script("return window.performance.timing.domComplete")
    loadPerformance = domComplete - navigationStart
    wait = Selenium::WebDriver::Wait.new(:timeout => 20)
    wait.until {@driver.find_element(GRID_TOTAL).text != "0 records"}
    contacts_records = @driver.find_element(GRID_TOTAL)
    contacts_count = contacts_records.text
    print "Contacts: \n"
    print "%s \n" % contacts_count
    print "Load Time: %s ms \n\n" % loadPerformance
  end

  #Class Methods: Popup
  def contact_name(contactname)
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(CONTACT_NAME_FIELD).displayed?}
    contact_name = @driver.find_element(CONTACT_NAME_FIELD)
    contact_name.send_keys(contactname)
  end

  def add_phone()
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(ADD_PHONE_OPTN).displayed?}
    add_phone = @driver.find_element(ADD_PHONE_OPTN)
    add_phone.click
  end

  def contact_phone1(contactphone1)
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(CONTACT_PHONE_FIRST).displayed?}
    phone_field = @driver.find_element(CONTACT_PHONE_FIRST)
    phone_field.send_keys(contactphone1)
  end

  def contact_phone2(contactphone2)
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(CONTACT_PHONE_SECOND).displayed?}
    phone_field = @driver.find_element(CONTACT_PHONE_SECOND)
    phone_field.send_keys(contactphone2)
  end

  def contact_phone3(contactphone3)
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(CONTACT_PHONE_THIRD).displayed?}
    phone_field = @driver.find_element(CONTACT_PHONE_THIRD)
    phone_field.send_keys(contactphone3)
  end

  def add_email
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(ADD_EMAIL_OPTN).displayed?}
    add_email = @driver.find_element(ADD_EMAIL_OPTN)
    add_email.click
  end

  def contact_email1(contactemail1)
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(CONTACT_EMAIL_FIRST).displayed?}
    email_field = @driver.find_element(CONTACT_EMAIL_FIRST)
    email_field.send_keys(contactemail1)
  end

  def contact_email2(contactemail2)
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(CONTACT_EMAIL_SECOND).displayed?}
    email_field = @driver.find_element(CONTACT_EMAIL_SECOND)
    email_field.send_keys(contactemail2)
  end

  def contact_email3(contactemail3)
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(CONTACT_EMAIL_THIRD).displayed?}
    email_field = @driver.find_element(CONTACT_EMAIL_THIRD)
    email_field.send_keys(contactemail3)
  end

  def contact_notes(contactnotes)
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(CONTACT_NOTES_FIELD).displayed?}
    contact_notes = @driver.find_element(CONTACT_NOTES_FIELD)
    contact_notes.send_keys(contactnotes)
  end

  def cancel()
    wait =   Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(CANCEL_BTN).displayed?}
    cancel_popup = @driver.find_element(CANCEL_BTN)
    cancel_popup.click
  end

  def actions()
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(ACTIONS_BTN).displayed?}
    actions_popup = @driver.find_element(ACTIONS_BTN)
    actions_popup.click
  end

  def inactive_popup
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(POPUP_INACTIVE).displayed?}
    inactive_popup = @driver.find_element(POPUP_INACTIVE)
    inactive_popup.click
    wait2 = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait2.until {@driver.find_element(POPUP_CONFIRM_INACTIVE).displayed?}
    confirm_inactive = @driver.find_element(POPUP_CONFIRM_INACTIVE)
    confirm_inactive.click
  end

  def save_close()
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(SAVE_AND_CLOSE_BTN).displayed?}
    save_and_close = @driver.find_element(SAVE_AND_CLOSE_BTN)
    save_and_close.click
    wait2 = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait2.until {@driver.find_element(class: "Counter_Message").text != "0 records"}
  end

  #CSS Modifiers: Contacts Section (Resource Popups)
  def search_contacts_tab(searchname)
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(CONTACTS_SEARCH_FIELD).displayed?}
    contact_name = @driver.find_element(CONTACTS_SEARCH_FIELD)
    contact_name.send_keys(searchname)
    wait2 = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait2.until {@driver.find_element(CONTACTS_SEARCH_FIELD)['value'] == searchname}
    button = @driver.find_element(SEARCH_CONTACTS_BTN)
    button.click
  end

  def reset_contacts_search()
      button = @driver.find_element(RESET_CONTACTS_BTN)
      button.click
  end

  def show_inactive_contacts()
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(SHOW_INACTIVE_CONTACTS).displayed?}
    top_makeinactive = @driver.find_element(SHOW_INACTIVE_CONTACTS)
    top_makeinactive.click
  end

  def create_new_button()
    i = 0
    loopcount = 5
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(CREATE_NEW_BTN).displayed?}
    button = @driver.find_element(CREATE_NEW_BTN)
    button.click
    loop do
      i += 1
      @driver.switch_to.frame(1)
      begin
        wait2 = Selenium::WebDriver::Wait.new(:timeout => 2)
        wait2.until {@driver.find_element(CONTACT_NAME_FIELD).displayed?}
      rescue Selenium::WebDriver::Error::TimeOutError
        false
      end
      if
        begin
          @driver.find_element(CONTACT_NAME_FIELD).displayed? == true
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

  def link_existing_button()
    i = 0
    loopcount = 5
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(LINK_EXISTING_BTN).displayed?}
    button = @driver.find_element(LINK_EXISTING_BTN)
    button.click
    loop do
      i += 1
      @driver.switch_to.frame(1)
      begin
        wait2 = Selenium::WebDriver::Wait.new(:timeout => 2)
        wait2.until {@driver.find_element(LINK_CONTACT_SEARCH).displayed?}
      rescue Selenium::WebDriver::Error::TimeOutError
        false
      end
      if
        begin
          @driver.find_element(LINK_CONTACT_SEARCH).displayed? == true
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

  def first_contact_name()
    display = @driver.find_element(FIRST_CONTACT_NAME)
  end

  def first_contact_notes()
    display = @driver.find_element(FIRST_CONTACT_NOTES)
  end

  def first_billing_checkbox()
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(FIRST_BILLING_CHKBX).displayed?}
    checkbox = @driver.find_element(FIRST_BILLING_CHKBX)
    checkbox.click
    sleep(1)
    wait2 = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait2.until {@driver.find_element(FIRST_BILLING_CHKBX).selected?}
  end

  def first_site_checkbox()
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(FIRST_SITE_CHKBX).displayed?}
    checkbox = @driver.find_element(FIRST_SITE_CHKBX)
    checkbox.click
    sleep(1)
    wait2 = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait2.until {@driver.find_element(FIRST_SITE_CHKBX).selected?}
  end

  def second_contact_name()
    display = @driver.find_element(SECOND_CONTACT_NAME)
  end

  def second_contact_notes()
    display = @driver.find_element(SECOND_CONTACT_NOTES)
  end

  def second_billing_checkbox()
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(SECOND_BILLING_CHKBX).displayed?}
    checkbox = @driver.find_element(SECOND_BILLING_CHKBX)
    checkbox.click
    sleep(1)
    wait2 = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait2.until {@driver.find_element(SECOND_BILLING_CHKBX).selected?}
  end

  def second_site_checkbox()
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(SECOND_SITE_CHKBX).displayed?}
    checkbox = @driver.find_element(SECOND_SITE_CHKBX)
    checkbox.click
    sleep(1)
    wait2 = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait2.until {@driver.find_element(SECOND_SITE_CHKBX).selected?}
  end

  def remove_top_contact()
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(REMOVE_TOP_CONTACT).displayed?}
    button = @driver.find_element(REMOVE_TOP_CONTACT)
    button.click
  end

  #CSS Modifiers: Link Contact Popup
  def link_contact(searchname)
    i = 0
    loopcount = 5
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(LINK_CONTACT_SEARCH).displayed?}
    contact_name = @driver.find_element(LINK_CONTACT_SEARCH)
    contact_name.send_keys(searchname)
    sleep(1)
    @driver.action.send_keys(:enter).perform
    button = @driver.find_element(CONFIRM_LINK_BTN)
    button.click
    sleep(1)
    loop do
      i += 1
      @driver.switch_to.frame(0)
      begin
        wait2 = Selenium::WebDriver::Wait.new(:timeout => 2)
        wait2.until {@driver.find_element(FIRST_CONTACT_NAME).displayed?}
      rescue Selenium::WebDriver::Error::TimeOutError
        false
      end
      if
        begin
          @driver.find_element(FIRST_CONTACT_NAME).displayed? == true
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

  def cancel_link_contact()
    i = 0
    loopcount = 5
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(CANCEL_LINK_BTN).displayed?}
    button = @driver.find_element(CANCEL_LINK_BTN)
    button.click
    loop do
      i += 1
      begin
      @driver.switch_to.frame(0)
      rescue
      Selenium::WebDriver::Error::NoSuchFrameError
      end
      begin
        wait2 = Selenium::WebDriver::Wait.new(:timeout => 2)
        wait2.until {@driver.find_element(SAVE_AND_CLOSE_BTN).displayed?}
      rescue Selenium::WebDriver::Error::TimeOutError
        false
      end
      if
        begin
          @driver.find_element(SAVE_AND_CLOSE_BTN).displayed? == true
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

end
