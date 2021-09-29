class PrintEmailPage

  #CSS Selectors: Selection Page
  PDF_CHECKBOX = {css: "input[id$='AttachPDFInput']"} #True
  IMAGES_CHECKBOX = {css: "input[id$='AttachImagesInput']"} #True (Patrols Only)
  REMIT_TO_CHECKBOX = {css: "input[id$='wtUseLocation']"} #True (Invoices Only)
  COMPLETED_ACTIVITY_CHECKBOX = {css: "input[id$='wtActivity']"} #False
  SERVICE_NEEDED_CHECKBOX = {css: "input[id$='ServiceNeededCheckBox']"} #True (Patrols Only)
  LINE_ITEMS_CHECKBOX = {css: "input[id$='IncludeLineItem']"} #True
  TOTAL_CHECKBOX = {css: "input[id$='wtIncludeT']"} #True
  SCOPE_OF_WORK_CHECKBOX = {css: "input[id$='ScopeOfWorkInput']"} #False
  INVOICE_SPECIAL_INSTRUCTIONS_CHECKBOX = {css: "input[id$='CustomerSpecialInstructionsInput']"} #False (Invoices Only)
  ESTIMATE_SPECIAL_INSTRUCTIONS_CHECKBOX = {css: "input[id$='CustomerSpecialInstructionsInput']"} #False (Estimates Only)
  JOB_SPECIAL_INSTRUCTIONS_CHECKBOX = {css: "input[id$='SpecialInstructionsInput']"} #False (Jobs Only)
  ADDITIONAL_NOTES_CHECKBOX = {css: "input[id$='AdditionalNotesInput']"} #False
  INVOICE_CUSTOMER_MEMO_CHECKBOX = {css: "input[id$='wtInvoiceCustomer']"} #False
  CANCEL_BTN = {css: "input[value='Cancel']"}
  OK_BTN = {css: "input[value='Ok']"}

  #CSS Selectors: Email Page
  EMAIL_ADDRESS_FIELD = {css: "input[id='wtEmailTo']"}
  EMAIL_FROM_FIELD = {css: "input[id='wtEmailFrom']"}
  BCC_ADDRESS_FIELD = {css: "input[id='wtEmailBCC']"}
  EMAIL_SUBJECT_FIELD = {css: "input[id='wtEmailSub']"}
  EMAIL_MESSAGE_FIELD = {css: "textarea[name='wtEmailMsg']"}
  MAILING_CHECKBOX = {css: "input[id='wt22']"}
  CLOSE_BTN = {css: "input[value='Close']"}
  BACK_BTN = {css: "input[value='Back']"}
  PRINT_BTN = {css: "input[value='Print']"}
  EMAIL_AND_CLOSE_BTN = {css: "input[value='Email and Close']"}

  #CSS Selectors: Other
  FRAME = {css: "iframe[tabindex='0']"}
  SAVE_AND_CLOSE_BTN = {css: "input[value='Save and Close']"}

  attr_reader :driver

  def initialize(driver)
    @driver = driver
  end

  class CustomError < StandardError
  end

  #CSS Methods: Selection Page
  def include_pdf()
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(PDF_CHECKBOX).displayed?}
    checkbox = @driver.find_element(PDF_CHECKBOX)
    checkbox.click
  end

  def include_images()
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(IMAGES_CHECKBOX).displayed?}
    checkbox = @driver.find_element(IMAGES_CHECKBOX)
    checkbox.click
  end

  def completed_activity()
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(COMPLETED_ACTIVITY_CHECKBOX).displayed?}
    checkbox = @driver.find_element(COMPLETED_ACTIVITY_CHECKBOX)
    checkbox.click
  end

  def remit_to()
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(REMIT_TO_CHECKBOX).displayed?}
    checkbox = @driver.find_element(REMIT_TO_CHECKBOX)
    checkbox.click
  end

  def service_needed()
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(SERVICE_NEEDED_CHECKBOX).displayed?}
    checkbox = @driver.find_element(SERVICE_NEEDED_CHECKBOX)
    checkbox.click
  end

  def include_lineitems()
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(LINE_ITEMS_CHECKBOX).displayed?}
    checkbox = @driver.find_element(LINE_ITEMS_CHECKBOX)
    checkbox.click
  end

  def include_total()
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(TOTAL_CHECKBOX).displayed?}
    checkbox = @driver.find_element(TOTAL_CHECKBOX)
    checkbox.click
  end

  def scope_of_work()
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(SCOPE_OF_WORK_CHECKBOX).displayed?}
    checkbox = @driver.find_element(SCOPE_OF_WORK_CHECKBOX)
    checkbox.click
  end

  def invoice_special_instructions()
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(INVOICE_SPECIAL_INSTRUCTIONS_CHECKBOX).displayed?}
    checkbox = @driver.find_element(INVOICE_SPECIAL_INSTRUCTIONS_CHECKBOX)
    checkbox.click
  end

  def estimate_special_instructions()
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(ESTIMATE_SPECIAL_INSTRUCTIONS_CHECKBOX).displayed?}
    checkbox = @driver.find_element(ESTIMATE_SPECIAL_INSTRUCTIONS_CHECKBOX)
    checkbox.click
  end

  def job_special_instructions()
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(JOB_SPECIAL_INSTRUCTIONS_CHECKBOX).displayed?}
    checkbox = @driver.find_element(JOB_SPECIAL_INSTRUCTIONS_CHECKBOX)
    checkbox.click
  end

  def additional_notes()
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(ADDITIONAL_NOTES_CHECKBOX).displayed?}
    checkbox = @driver.find_element(ADDITIONAL_NOTES_CHECKBOX)
    checkbox.click
  end

  def invoice_customer_memo()
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(INVOICE_CUSTOMER_MEMO_CHECKBOX).displayed?}
    checkbox = @driver.find_element(INVOICE_CUSTOMER_MEMO_CHECKBOX)
    checkbox.click
  end

  def cancel()
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(CANCEL_BTN).displayed?}
    cancel_button = @driver.find_element(CANCEL_BTN)
    cancel_button.click
    @driver.switch_to.default_content
    @driver.switch_to.frame(0)
  end

  def ok()
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(OK_BTN).displayed?}
    ok_button = @driver.find_element(OK_BTN)
    ok_button.click
  end

  #CSS Methods: Email Page
  def email_address(emailaddress)
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(EMAIL_ADDRESS_FIELD).displayed?}
    email_address = @driver.find_element(EMAIL_ADDRESS_FIELD)
		email_address.send_keys(emailaddress)
  end

  def email_from(emailfrom)
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(EMAIL_FROM_FIELD).displayed?}
    email_from = @driver.find_element(EMAIL_FROM_FIELD)
		email_from.send_keys(emailfrom)
  end

  def bcc_address(bccaddress)
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(BCC_ADDRESS_FIELD).displayed?}
    bcc_address = @driver.find_element(BCC_ADDRESS_FIELD)
		bcc_address.send_keys(bccaddress)
  end

  def email_subject(emailsubject)
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(EMAIL_SUBJECT_FIELD).displayed?}
    email_subject = @driver.find_element(EMAIL_SUBJECT_FIELD)
		email_subject.send_keys(emailsubject)
  end

  def email_message(emailmessage)
    if @driver.find_element(EMAIL_MESSAGE_FIELD).text == ""
      field_click = @driver.find_element(EMAIL_MESSAGE_FIELD)
      field_click.click
      wait = Selenium::WebDriver::Wait.new(:timeout => 5)
      wait.until {@driver.find_element(EMAIL_MESSAGE_FIELD).displayed?}
      email_message = @driver.find_element(EMAIL_MESSAGE_FIELD)
  		email_message.send_keys(emailmessage)
    end
  end

  def mailing()
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(MAILING_CHECKBOX).displayed?}
    checkbox = @driver.find_element(MAILING_CHECKBOX)
    checkbox.click
  end

  def close()
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(CLOSE_BTN).displayed?}
    close_button = @driver.find_element(CLOSE_BTN)
    close_button.click
    @driver.switch_to.default_content
    @driver.switch_to.frame(0)
  end

  def back()
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(BACK_BTN).displayed?}
    back_button = @driver.find_element(BACK_BTN)
    back_button.click
  end

  def print()
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(PRINT_BTN).displayed?}
    print_button = @driver.find_element(PRINT_BTN)
    print_button.click
  end

  def email_close()
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(EMAIL_AND_CLOSE_BTN).displayed?}
    email_button = @driver.find_element(EMAIL_AND_CLOSE_BTN)
    email_button.click
    @driver.switch_to.alert.accept rescue Selenium::WebDriver::Error::NoAlertOpenError
    #wait2 = Selenium::WebDriver::Wait.new(:timeout => 5)
    #wait2.until {@driver.find_element(FRAME).displayed?}
    @driver.switch_to.default_content
    @driver.switch_to.frame(0)
  end

end
