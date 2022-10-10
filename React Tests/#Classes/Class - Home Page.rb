class ServizioHome

  #CSS Selectors
  RESOURCE_MENU = {css: "div[class='choices__list choices__list--single']"}
  FIND_RESOURCE = {css: "input[title='Find a Resource']"}
  GRID_ACTIONS = {css: "div[class='dropdown-header select']"}

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
    wait.until {@driver.find_element(GRID_ACTIONS).displayed?}
  end
end
