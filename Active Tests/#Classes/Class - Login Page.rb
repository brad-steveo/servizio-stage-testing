class ServizioLoginPage

  #CSS Selectors
  LOGIN_FIELD = {css: "input[id$='UserNameInput']"}
  PASSWORD_FIELD = {css: "input[id$='PasswordInput']"}
  SIGN_IN_BTN = {css: "input[value='Sign in']"}

  attr_reader :driver

  def initialize(driver)
    @driver = driver
  end

  #Class Methods
  def enter_loginname(loginname)
  	login_name_field = @driver.find_element(LOGIN_FIELD)
  	login_name_field.send_keys(loginname)
  end

  def enter_password(password)
  	login_pw_field = @driver.find_element(PASSWORD_FIELD)
  	login_pw_field.send_keys(password)
  end

  def sign_in()
  	sign_in_button = @driver.find_element(SIGN_IN_BTN)
  	sign_in_button.click
  end
end
