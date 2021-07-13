class ActivitiesResource

  #CSS Selectors: Grid
  ACTIVITIES_OPTN = {css: "a[id$='Sidebar_Activities']"}
  ACTIVITIES_COUNT = {xpath: "/html/body/form/div[3]/div[2]/span/div[1]/div/div[2]/div[1]/div/a/div/span"}
  TOP_REFNUMBER = {css: "a[id$='ActivityTable_ctl03_wtActivityIDLink']"}
  TOP_DESCRIPTION = {xpath: "/html/body/form/div[3]/div[3]/div[1]/div[2]/div[1]/div[3]/span/table/tbody/tr[1]/td[4]"}
  TOP_CREATED = {xpath: "/html/body/form/div[3]/div[3]/div[1]/div[2]/div[1]/div[3]/span/table/tbody/tr[1]/td[5]"}
  TOP_CREATED_DATE = {xpath: "/html/body/form/div[3]/div[3]/div[1]/div[2]/div[1]/div[3]/span/table/tbody/tr[1]/td[6]"}
  TOP_ASSIGNED = {xpath: "/html/body/form/div[3]/div[3]/div[1]/div[2]/div[1]/div[3]/span/table/tbody/tr[1]/td[9]"}
  TOP_DUE = {xpath: "/html/body/form/div[3]/div[3]/div[1]/div[2]/div[1]/div[3]/span/table/tbody/tr[1]/td[10]"}
    TOP_ACTIVITY_ACTIONS = {xpath: "/html/body/form/div[3]/div[3]/div[1]/div[2]/div[1]/div[3]/span/table/tbody/tr[1]/td[1]/div/div/div[1]/div[1]/span"}
      ACTIONS_COMPLETE = {css: "a[id$='CompleteActivityLink']"}
      ACTIONS_DOCUMENTS = {css: "a[id$='DocumentsLink']"}
      ACTIONS_MAKEINACTIVE = {css: "a[id$='MakeInactiveLink']"}
        PUSH_CONFIRM = {css: "a[class='conf-dialog-button blue']"}
  SEARCH_FIELD = {css: "input[id$='SearchInput']"}
  SEARCH_BTN = {css: "input[value='Search']"}
  RESET_BTN = {css: "input[value='Reset']"}
  CREATE_ACTIVITY = {css: "a[id$='wtCreateActivityLink']"}
  GRID_OPTIONS_DROPDOWN = {xpath: "/html/body/form/div[3]/div[3]/div[1]/div[2]/div[1]/div[2]/div[2]/div[2]/div/div[1]/div/span"}
    EXPORT_ACTIVITIES = {css: "a[id$='ExportGridLink']"}
    SHOW_INACTIVES = {css: "input[id$='ShowInactivesCheckbox']"}
  ID_COLUMN = {css: "input[id$='wtActivityTable_ctl02_wtIdSearchTextInput']"}
  DESCRIPTION_COLUMN = {css: "input[id$='wtActivityTable_ctl02_wtDescriptionSearchTextInput']"}

  #CSS Selectors: Popup
  RESOURCE_TEXT = {xpath: "/html/body/form/div[3]/div[1]/div/div[1]/div[1]/div/div"}
  COMPLETE_CHECKBOX = {css: "input[id$='wtActivityCompleteCheckbox']"}
  COMPLETE_PATROL_CHECKBOX = {css: "input[id$='PatrolCompleteCheckbox']"}
  DATE_DUE_FIELD = {css: "input[id$='Activity_DateDue']"}
  DATE_COMPLETED_FIELD = {css: "input[id$='Activity_DateCompleted']"}
  DATE_REMINDER_FIELD = {css: "input[id$='Activity_DateReminder']"}
  REMINDER_EMAILS_FIELD = {css: "input[id$='Activity_ReminderEmails']"}
  CONTACT_METHOD_DROPDOWN = {css: "select[id$='ActivityTypeCombobox']"}
  REASON_DROPDOWN = {css: "select[id$='ActivityReasonCombobox']"}
  DESCRIPTION_FIELD = {css: "textarea[id$='Activity_Description']"}
  CANCEL_BTN = {css: "input[value='Cancel']"}
  ACTIONS_BTN = {xpath: "/html/body/form/div[3]/div[1]/div/div[2]/div[2]/div/div/div[1]/div[2]/span"}
  SAVE_AND_NEW_BTN = {css: "input[value='Save and New']"}
  SAVE_AND_CLOSE_BTN = {css: "input[value='Save and Close']"}

  #CSS Selectors: Frame Anchors
  FRAME = {css: "iframe[tabindex='0']"}
  DOCUMENTS_SHOWHIDE_UPLOADER = {xpath: "/html/body/form/div[3]/div[1]/div/div/div[1]/div[2]/a/span"}

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
  def open_activities()
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(ACTIVITIES_OPTN).displayed?}
    actions = @driver.find_element(ACTIVITIES_OPTN)
    actions.click
    wait2 = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait2.until {@driver.find_element(class: "Counter_Message").text != "0 records"}
  end

  def activity_count()
    top_refnumber = @driver.find_element(ACTIVITIES_COUNT)
  end

  def top_refnumber()
    top_refnumber = @driver.find_element(TOP_REFNUMBER)
  end

  def top_description()
    top = @driver.find_element(TOP_DESCRIPTION)
  end

  def top_created()
    top = @driver.find_element(TOP_CREATED)
  end

  def top_created_date()
    top = @driver.find_element(TOP_CREATED_DATE)
  end

  def top_assigned()
    top = @driver.find_element(TOP_ASSIGNED)
  end

  def top_due()
    top = @driver.find_element(TOP_DUE)
  end

  def top_actions()
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(TOP_ACTIVITY_ACTIONS).displayed?}
    top_actions = @driver.find_element(TOP_ACTIVITY_ACTIONS)
    top_actions.click
  end

  def actions_complete()
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(ACTIONS_COMPLETE).displayed?}
    top_complete = @driver.find_element(ACTIONS_COMPLETE)
    top_complete.click
  end

  def actions_documents()
    i = 0
    loopcount = 5
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(ACTIONS_DOCUMENTS).displayed?}
    top_documents = @driver.find_element(ACTIONS_DOCUMENTS)
    top_documents.click
    loop do
      i += 1
      @driver.switch_to.frame(0)
      begin
        wait2 = Selenium::WebDriver::Wait.new(:timeout => 2)
        wait2.until {@driver.find_element(DOCUMENTS_SHOWHIDE_UPLOADER).displayed?}
      rescue Selenium::WebDriver::Error::TimeOutError
        false
      end
      if
        begin
          @driver.find_element(DOCUMENTS_SHOWHIDE_UPLOADER).displayed? == true
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

  def actions_makeinactive()
    currenttopref = @driver.find_element(TOP_REFNUMBER).text
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(ACTIONS_MAKEINACTIVE).displayed?}
    top_makeinactive = @driver.find_element(ACTIONS_MAKEINACTIVE)
    top_makeinactive.click
    wait2 = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait2.until {@driver.find_element(PUSH_CONFIRM).displayed?}
    confirm = @driver.find_element(PUSH_CONFIRM)
    confirm.click
    wait3 = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait3.until {@driver.find_element(TOP_REFNUMBER).text != currenttopref}
  end

  def top_open()
    i = 0
    loopcount = 5
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(TOP_REFNUMBER).displayed?}
    top = @driver.find_element(TOP_REFNUMBER)
    top.click
    loop do
      i += 1
      @driver.switch_to.frame(0)
      begin
        wait2 = Selenium::WebDriver::Wait.new(:timeout => 2)
        wait2.until {@driver.find_element(REASON_DROPDOWN).displayed?}
      rescue Selenium::WebDriver::Error::TimeOutError
        false
      end
      if
        begin
          @driver.find_element(REASON_DROPDOWN).displayed? == true
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

  def search_activity(searchname)
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(SEARCH_FIELD).displayed?}
    activity_search = @driver.find_element(SEARCH_FIELD)
    activity_search.send_keys(searchname)
    wait2 = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait2.until {@driver.find_element(SEARCH_BTN).displayed?}
    search_confirm = @driver.find_element(SEARCH_BTN)
    search_confirm.click
    wait3 = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait3.until {@driver.find_element(TOP_DESCRIPTION).text.downcase.include?(searchname.downcase)}
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

  def create_activity()
    i = 0
    loopcount = 5
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(CREATE_ACTIVITY).displayed?}
    button = @driver.find_element(CREATE_ACTIVITY)
    button.click
    loop do
      i += 1
      @driver.switch_to.frame(0)
      begin
        wait2 = Selenium::WebDriver::Wait.new(:timeout => 2)
        wait2.until {@driver.find_element(REASON_DROPDOWN).displayed?}
      rescue Selenium::WebDriver::Error::TimeOutError
        false
      end
      if
        begin
          @driver.find_element(REASON_DROPDOWN).displayed? == true
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

  def grid_options()
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(GRID_OPTIONS_DROPDOWN).displayed?}
    grid_options = @driver.find_element(GRID_OPTIONS_DROPDOWN)
    grid_options.click
  end

  def export_activities()
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(EXPORT_ACTIVITIES).displayed?}
    export_activities = @driver.find_element(EXPORT_ACTIVITIES)
    export_activities.click
  end

  def show_inactives()
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(SHOW_INACTIVES).displayed?}
    show_inactives = @driver.find_element(SHOW_INACTIVES)
    show_inactives.click
  end

  def search_activityid(searchname)
    i = 0
    loopcount = 5
    loop do
      wait = Selenium::WebDriver::Wait.new(:timeout => 5)
      if
        begin
          wait.until {@driver.find_element(ID_COLUMN).displayed?}
        rescue Selenium::WebDriver::Error::StaleElementReferenceError
          false
        end
        break
        if i == loopcount
          raise StaleError
        end
      end
    end
    activity_search = @driver.find_element(ID_COLUMN)
    activity_search.send_keys(searchname)
    @driver.action.send_keys(:enter).perform
    wait2 = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait2.until {@driver.find_element(TOP_REFNUMBER).text.include?(searchname)}
  end

  def search_activityid_field()
    field = @driver.find_element(ID_COLUMN)
  end

  def search_activitydescription(searchname)
    i = 0
    loopcount = 5
    loop do
      wait = Selenium::WebDriver::Wait.new(:timeout => 5)
      if
        begin
          wait.until {@driver.find_element(DESCRIPTION_COLUMN).displayed?} == true
        rescue Selenium::WebDriver::Error::StaleElementReferenceError
          false
        end
        break
        if i == loopcount
          raise StaleError
        end
      end
    end
    activity_search = @driver.find_element(DESCRIPTION_COLUMN)
    activity_search.send_keys(searchname)
    @driver.action.send_keys(:enter).perform
    wait2 = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait2.until {@driver.find_element(TOP_DESCRIPTION).text.include?(searchname)}
  end

  def resource_performance()
    navigationStart = @driver.execute_script("return window.performance.timing.navigationStart")
    responseStart = @driver.execute_script("return window.performance.timing.responseStart")
    domComplete = @driver.execute_script("return window.performance.timing.domComplete")
    loadPerformance = domComplete - navigationStart
    wait = Selenium::WebDriver::Wait.new(:timeout => 20)
    wait.until {@driver.find_element(class: "Counter_Message").text != "0 records" }
    activity_records = @driver.find_element(class: "Counter_Message")
    activity_count = activity_records.text
    print "Activities: \n"
    print "%s \n" % activity_count
    print "Load Time: %s ms \n\n" % loadPerformance
  end

  #CSS Methods: Popup
  def resource_text()
    resourcetext = @driver.find_element(RESOURCE_TEXT)
  end

  def complete_activity()
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(COMPLETE_CHECKBOX).displayed?}
    checkbox = @driver.find_element(COMPLETE_CHECKBOX)
    checkbox.click
  end

  def complete_patrol()
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(COMPLETE_PATROL_CHECKBOX).displayed?}
    checkbox = @driver.find_element(COMPLETE_PATROL_CHECKBOX)
    checkbox.click
  end

  def date_due_contents()
    textarea = @driver.find_element(DATE_DUE_FIELD)
  end

  def date_due(datedue)
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(DATE_DUE_FIELD).displayed?}
    date_due = @driver.find_element(DATE_DUE_FIELD)
		date_due.send_keys(datedue)
  end

  def date_completed(datecompleted)
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(DATE_COMPLETED_FIELD).displayed?}
    date_completed = @driver.find_element(DATE_COMPLETED_FIELD)
		date_completed.send_keys(datecompleted)
  end

  def date_reminder(datereminder)
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(DATE_REMINDER_FIELD).displayed?}
    date_reminder = @driver.find_element(DATE_REMINDER_FIELD)
		date_reminder.send_keys(datereminder)
  end

  def reminder_emails(reminderemails)
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(REMINDER_EMAILS_FIELD).displayed?}
    reminder_emails = @driver.find_element(REMINDER_EMAILS_FIELD)
		reminder_emails.send_keys(reminderemails)
  end

  def contact_method(typeselect)
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(CONTACT_METHOD_DROPDOWN).displayed?}
    dropdown_list = @driver.find_element(CONTACT_METHOD_DROPDOWN)
    options = dropdown_list.find_elements(tag_name: 'option')
    options.each {|option| option.click if option.text == (typeselect)}
  end

  def reason(reasonselect)
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(REASON_DROPDOWN).displayed?}
    dropdown_list = @driver.find_element(REASON_DROPDOWN)
    options = dropdown_list.find_elements(tag_name: 'option')
    options.each {|option| option.click if option.text == (reasonselect)}
  end

  def description(descriptionfield)
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(DESCRIPTION_FIELD).displayed?}
    description = @driver.find_element(DESCRIPTION_FIELD)
    description.send_keys(descriptionfield)
  end

  def cancel()
    i = 0
    loopcount = 5
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(CANCEL_BTN).displayed?}
    cancel_popup = @driver.find_element(CANCEL_BTN)
    loop do
      i += 1
      cancel_popup.click
      begin
        wait2 = Selenium::WebDriver::Wait.new(:timeout => 2)
        wait2.until {@driver.find_element(TOP_REFNUMBER).displayed?}
      rescue Selenium::WebDriver::Error::TimeOutError
        false
      end
      if
        begin
          @driver.find_element(TOP_REFNUMBER).displayed? == true
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

  def actions()
    #Use actions_(action) methods from here
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(ACTIONS_BTN).displayed?}
    actions_popup = @driver.find_element(ACTIONS_BTN)
    actions_popup.click
  end

  def save_new()
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(SAVE_AND_NEW_BTN).displayed?}
    save_and_new = @driver.find_element(SAVE_AND_NEW_BTN)
    save_and_new.click
    sleep(1)
    #Having some issues getting this to work with a sleep action
  end

  def save_close()
    #Use this for saving activities created in other resources
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(SAVE_AND_CLOSE_BTN).displayed?}
    save_and_close = @driver.find_element(SAVE_AND_CLOSE_BTN)
    save_and_close.click
    wait2 = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait2.until {@driver.find_element(FRAME).displayed?}
    @driver.switch_to.frame(0)
    @driver.execute_script("window.scrollTo(0, document.body.scrollHeight)")
  end

  def save_close_grid()
    i = 0
    loopcount = 5
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(SAVE_AND_CLOSE_BTN).displayed?}
    save_and_close = @driver.find_element(SAVE_AND_CLOSE_BTN)
    loop do
      i += 1
      save_and_close.click
      begin
        wait2 = Selenium::WebDriver::Wait.new(:timeout => 2)
        wait2.until {@driver.find_element(TOP_REFNUMBER).displayed?}
      rescue Selenium::WebDriver::Error::TimeOutError
        false
      end
      if
        begin
          @driver.find_element(TOP_REFNUMBER).displayed? == true
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
