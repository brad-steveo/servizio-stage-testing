class ServizioHome

  #CSS Selectors
  RESOURCE_MENU = {css: "div[class='choices__list choices__list--single']"}
  FIND_RESOURCE = {css: "input[title='Find a Resource']"}
  GRID = {css: "table[role='grid']"}
  HOME_TAB = {css: "div[id='b7-Title']"}
  WIDGET_GALLERY = {css: "div[class='osui-gallery']"}
  GLOBAL_SEARCH = {css: "input[id='b2-b3-Input_ResourceSearch']"}
  GLOBAL_TOP = {xpath: "/html/body/div/div/div/div/div/div/header/div/div/div[3]/div/nav/div[2]/div[2]/div/div[2]/div/div/div"}
  GLOBAL_TOP_ID = {xpath: "/html/body/div/div/div/div/div/div/header/div/div/div[3]/div/nav/div[2]/div[2]/div/div[2]/div/div/div/div[2]/div/div/mark"}
  FIRST_TAB = {css: "div[id='$b7']"}
  FIRST_TAB_TITLE = {xpath: "/html/body/div/div/div/div/div/div/div/div/div[3]/div/div/div[1]/div[2]/div/span"}
  FIRST_TAB_CLOSE = {xpath: "/html/body/div[1]/div/div/div/div/div/div/div/div[3]/div/div/div[1]/div[2]/div/i"}
  SECOND_TAB = {css: "div[id='$b8']"}
  SECOND_TAB_TITLE = {xpath: "/html/body/div[1]/div/div/div/div/div/div/div/div[3]/div/div/div[1]/div[3]/div/span"}
  SECOND_TAB_CLOSE = {xpath: "/html/body/div[1]/div/div/div/div/div/div/div/div[3]/div/div/div[1]/div[3]/div/i"}

  class StaleError < StandardError
    def initialize(msg='Stale reference error')
      super
    end
  end

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

  def global_search(keyword)
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait.until {@driver.find_element(GLOBAL_SEARCH).displayed?}
    search = @driver.find_element(GLOBAL_SEARCH)
    search.send_keys(keyword)
    sleep(1)
    wait.until {@driver.find_element(GLOBAL_TOP).displayed?}
    top_result = @driver.find_element(GLOBAL_TOP)
    top_result.click
    sleep(1)
  end

  def global_search_clear()
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait.until {@driver.find_element(GLOBAL_SEARCH).displayed?}
    search = @driver.find_element(GLOBAL_SEARCH)
    search.clear
    sleep(1)
  end

  def first_tab_open()
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait.until {@driver.find_element(FIRST_TAB).displayed?}
    tab = @driver.find_element(FIRST_TAB)
    tab.click
  end

  def first_tab_close()
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait.until {@driver.find_element(FIRST_TAB_CLOSE).displayed?}
    tab = @driver.find_element(FIRST_TAB_CLOSE)
    tab.click
  end

  def first_tab_title()
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait.until {@driver.find_element(FIRST_TAB_TITLE).displayed?}
    tab = @driver.find_element(FIRST_TAB_TITLE)
  end

  def second_tab_open()
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait.until {@driver.find_element(SECOND_TAB).displayed?}
    tab = @driver.find_element(SECOND_TAB)
    tab.click
  end

  def second_tab_close()
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait.until {@driver.find_element(SECOND_TAB_CLOSE).displayed?}
    tab = @driver.find_element(SECOND_TAB_CLOSE)
    tab.click
  end

  def second_tab_title()
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait.until {@driver.find_element(SECOND_TAB_TITLE).displayed?}
    tab = @driver.find_element(SECOND_TAB_TITLE)
  end
end
