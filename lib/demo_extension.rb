class DemoExtension
  # expected and available entry points from/into the controller
  attr_accessor :form_params, :flash_alert, :flash_notice

  def process!
    # do something with form_params
    # return true or false (will display appropriate flash notice of alert)
    # set flash alert `self.flash_alert` for process failure
    # and flash notice `self.flash_notice` for process sucess
  end

  # other optional custom methods
  def greeting
    "Hello World, from DemoExtension"
  end

  # set and forget default flash messages

  def flash_notice=(message="Successfully processed.")
    @flash_notice = message
  end

  def flash_alert=(message="An error occured while processing.")
    @flash_alert = message
  end
end