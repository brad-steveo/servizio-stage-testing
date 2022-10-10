class ServizioHome

  #CSS Selectors
  RESOURCE_MENU = {css: "div[class='choices__list choices__list--single']"}
  FIND_RESOURCE = {css: "input[title='Find a Resource']"}
  GRID = {css: "table[role='grid']"}
  HOME_TAB = {css: "div[id='b7-Title']"}
  WIDGET_GALLERY = {css: "div[class='osui-gallery']"}
  FIRST_TAB_CLOSE = {xpath: "/html/body/div[1]/div/div/div/div/div/div/div/div[3]/div/div/div[1]/div[2]/div/i"}

  attr_reader :driver

  def initialize(driver)
    @driver = driver
  end

  #Class Methods
  def open_resource(resource)
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait.until {@driver.find_element(RESOURCE_MENU).displayed?}
    resource_menu = @driver.find_element(RESOURCE_MENU)
    resource_menu.click
    wait.until {@driver.find_element(FIND_RESOURCE).displayed?}
    find_resource_field = @driver.find_element(FIND_RESOURCE)
    find_resource_field.send_keys(resource)
    sleep(1)
    @driver.action.send_keys(:enter).perform
    sleep(1)
    wait.until {@driver.find_element(GRID).displayed?}
  end

  def home_tab()
    home_tab = @driver.find_element(HOME_TAB)
    home_tab.click
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait.until {@driver.find_element(WIDGET_GALLERY).displayed?}
  end

  def close_tab()
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait.until {@driver.find_element(FIRST_TAB_CLOSE).displayed?}
    close_tab = @driver.find_element(FIRST_TAB_CLOSE)
    close_tab.click
    sleep(1)
  end
end
