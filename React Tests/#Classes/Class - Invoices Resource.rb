class InvoicesResource

  #CSS Selectors
  TOP_REF = {xpath: "/html/body/div[1]/div/div/div/div/div/div/div/div[3]/div/div/div[2]/div/div[2]/div/div/div/div/div/div/div[4]/table/tbody/tr[1]/td[2]/a/span"}
  GRID_ACTIONS = {css: "div[class='dropdown-header select']"}
  EXPORT_GRID = {css: "div[id$='ExportTitlePlaceholder']"}

  attr_reader :driver

  def initialize(driver)
    @driver = driver
  end

  #Class Methods
  def top()
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait.until {@driver.find_element(TOP_REF).displayed?}
    top_record = @driver.find_element(TOP_REF)
  end

  def export_grid()
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    wait.until {@driver.find_element(GRID_ACTIONS).displayed?}
    grid_actions = @driver.find_element(GRID_ACTIONS)
    grid_actions.click
    wait.until {@driver.find_element(EXPORT_GRID).displayed?}
    export_grid = @driver.find_element(EXPORT_GRID)
    export_grid.click
    sleep(2)
  end

end
