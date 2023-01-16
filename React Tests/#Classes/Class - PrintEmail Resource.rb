class PrintEmailResource

  #CSS Selectors
  EMAIL_ADDRESS = {css: "input[id$='Input_EmailAddress']"}
  EMAIL_FROM = {css: "input[id$='Input_EmailFrom']"}
  EMAIL_CC = {css: "input[id$='Input_EmailCC']"}
  EMAIL_BCC = {css: "input[id$='Input_EmailBCC']"}
  EMAIL_SUBJECT = {css: "input[id$='Input_EmailSubject']"}
  EMAIL_MESSAGE = {css: "textarea[id$='TextArea_EmailMessage']"}
  PDF_ATTACHEMENT_CHECKBOX = {css: "input[id$='CB_IncludePDF']"}
  IMAGE_ATTACHEMENT_CHECKBOX = {css: "input[id$='CB_IncludeImages']"}
  TERMS_CHECKBOX = {css: "input[id$='CB_IncludeTerms']"}
  ACTIVITIES_CHECKBOX = {css: "input[id$='CB_CreateActivity']"}
  NO_SERVICE_NEEDED_CHECKBOX = {css: "input[id$='CB_NoServiceNeeded']"}
  SCOPE_OF_WORK_CHECKBOX = {css: "input[id$='CB_ScopeAsMessage']"}
  CANCEL_BUTTON = {css: "button[id$='CancelBtn']"}
  EMAIL_CLOSE_BUTTON = {css: "button[id$='EmailCloseBtn']"}

  attr_reader :driver

  def initialize(driver)
    @driver = driver
  end

  #Class Methods
  def email_address(string)
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait.until {@driver.find_element(EMAIL_ADDRESS).displayed?}
    input = @driver.find_element(EMAIL_ADDRESS)
    input.send_keys(string)
  end

  def email_from(string)
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait.until {@driver.find_element(EMAIL_FROM).displayed?}
    input = @driver.find_element(EMAIL_FROM)
    input.send_keys(string)
  end

  def email_cc(string)
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait.until {@driver.find_element(EMAIL_CC).displayed?}
    input = @driver.find_element(EMAIL_CC)
    input.send_keys(string)
  end

  def email_bcc(string)
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait.until {@driver.find_element(EMAIL_BCC).displayed?}
    input = @driver.find_element(EMAIL_BCC)
    input.send_keys(string)
  end

  def email_subject(string)
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait.until {@driver.find_element(EMAIL_SUBJECT).displayed?}
    input = @driver.find_element(EMAIL_SUBJECT)
    input.send_keys(string)
  end

  def email_message(string)
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait.until {@driver.find_element(EMAIL_MESSAGE).displayed?}
    input = @driver.find_element(EMAIL_MESSAGE)
    input.send_keys(string)
  end

  def pdf_attachement()
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait.until {@driver.find_element(PDF_ATTACHEMENT_CHECKBOX).displayed?}
    checkbox = @driver.find_element(PDF_ATTACHEMENT_CHECKBOX)
    checkbox.click
  end

  def image_attachement()
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait.until {@driver.find_element(IMAGE_ATTACHEMENT_CHECKBOX).displayed?}
    checkbox = @driver.find_element(IMAGE_ATTACHEMENT_CHECKBOX)
    checkbox.click
  end

  def terms()
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait.until {@driver.find_element(TERMS_CHECKBOX).displayed?}
    checkbox = @driver.find_element(TERMS_CHECKBOX)
    checkbox.click
  end

  def create_activity()
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait.until {@driver.find_element(ACTIVITIES_CHECKBOX).displayed?}
    checkbox = @driver.find_element(ACTIVITIES_CHECKBOX)
    checkbox.click
  end

  def no_service_needed()
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait.until {@driver.find_element(NO_SERVICE_NEEDED_CHECKBOX).displayed?}
    checkbox = @driver.find_element(NO_SERVICE_NEEDED_CHECKBOX)
    checkbox.click
  end

  def scope_of_work()
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait.until {@driver.find_element(SCOPE_OF_WORK_CHECKBOX).displayed?}
    checkbox = @driver.find_element(SCOPE_OF_WORK_CHECKBOX)
    checkbox.click
  end

  def cancel()
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait.until {@driver.find_element(CANCEL_BUTTON).displayed?}
    button = @driver.find_element(CANCEL_BUTTON)
    button.click
  end

  def email_close()
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait.until {@driver.find_element(EMAIL_CLOSE_BUTTON).displayed?}
    button = @driver.find_element(EMAIL_CLOSE_BUTTON)
    button.click
    sleep(3)
  end

end
