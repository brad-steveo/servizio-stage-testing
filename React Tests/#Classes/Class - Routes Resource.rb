class RoutesResource

  #CSS Selectors
  MAP = {css: "div[id='b20-b3-RouteMap']"}

  attr_reader :driver

  def initialize(driver)
    @driver = driver
  end

  #Class Methods
  def map()
    routesmap = @driver.find_element(MAP)
  end

end
