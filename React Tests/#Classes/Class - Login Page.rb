class ServizioLoginPage

  #CSS Selectors
  GOOGLE_LOGIN = {xpath: "/html/body/div/div/div/div/div/div/div/div/form/div[2]/div/a/img"}
  GOOGLE_USERNAME = {css: "input[id='identifierId']"}
  NEXT_BTN = {xpath: "/html/body/div[1]/div[1]/div[2]/div/div[2]/div/div/div[2]/div/div[2]/div/div[1]/div/div/button/span"}
  GOOGLE_PASSWORD = {css: "input[name='password']"}
  LOGIN_FIELD = {css: "input[id$='UserNameInput']"}
  PASSWORD_FIELD = {css: "input[id$='PasswordInput']"}
  SIGN_IN_BTN = {css: "input[value='Sign in']"}

  attr_reader :driver

  def initialize(driver)
    @driver = driver
  end

  #Class Methods
  def google_login()
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait.until {@driver.find_element(GOOGLE_LOGIN).displayed?}
    login_link = @driver.find_element(GOOGLE_LOGIN)
    login_link.click
  end

  def enter_loginname(loginname)
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(GOOGLE_USERNAME).displayed?}
  	login_name_field = @driver.find_element(GOOGLE_USERNAME)
  	login_name_field.send_keys(loginname)
    next_button = @driver.find_element(NEXT_BTN)
    next_button.click
    sleep(2)
  end

  def enter_password(password)
    wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    wait.until {@driver.find_element(GOOGLE_PASSWORD).displayed?}
  	login_pw_field = @driver.find_element(GOOGLE_PASSWORD)
  	login_pw_field.send_keys(password)
    next_button = @driver.find_element(NEXT_BTN)
    next_button.click
    sleep(2)
  end

  def sign_in()
  	sign_in_button = @driver.find_element(SIGN_IN_BTN)
  	sign_in_button.click
  end
end
