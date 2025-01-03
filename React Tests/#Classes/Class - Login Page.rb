class ServizioLogin

  #CSS Selectors
  USERNAME_FIELD = {css: "input[id$='Input_UsernameVal']"}
  PASSWORD_FIELD = {css: "input[id$='Input_Password']"}
  LOGIN_BTN = {xpath: "/html/body/div/div/div/div/div/div/div/div/form/div[2]/div[2]/div/div/button"}
  SERVIZIO_LOGO = {xpath: "/html/body/div[1]/div/div/div/div/div[1]/header/div/div/div/div/nav/div[1]/div/div/span"}

  attr_reader :driver

  def initialize(driver)
    @driver = driver
  end

  #Class Methods
  def enter_username(loginname)
    wait = Selenium::WebDriver::Wait.new(:timeout => 60)
    wait.until {@driver.find_element(USERNAME_FIELD).displayed?}
  	username_field = @driver.find_element(USERNAME_FIELD)
  	username_field.send_keys(loginname)
  end

  def enter_password(password)
    wait = Selenium::WebDriver::Wait.new(:timeout => 30)
    wait.until {@driver.find_element(PASSWORD_FIELD).displayed?}
  	password_field = @driver.find_element(PASSWORD_FIELD)
  	password_field.send_keys(password)
  end

  def sign_in()
  	login_button = @driver.find_element(LOGIN_BTN)
  	login_button.click
    wait = Selenium::WebDriver::Wait.new(:timeout => 30)
    wait.until {@driver.find_element(SERVIZIO_LOGO).displayed?}
    sleep(3)
  end
end
