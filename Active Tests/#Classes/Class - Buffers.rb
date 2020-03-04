class Buffers

  #CSS Selectors
  AJAX = {css: "div[class='Feedback_AjaxWait']"}

  #Custom Errors
  class FrameError < StandardError
    def initialize(msg='Unable to switch to frame and locate element')
      super
    end
  end

  class StaleError < StandardError
    def initialize(msg='Stale reference error')
      super
    end
  end

  attr_reader :driver

  def initialize(driver)
    @driver = driver
  end

  #CSS Methods
  def ajax_buffer()
    wait = Selenium::WebDriver::Wait.new(:timeout => 10)
		wait.until {@driver.find_element(AJAX).displayed? == false}
  end

end
