require 'selenium-webdriver'
require 'appium_lib'

module Util
  class << self

  # Creates appium driver for mobile app test execution
  # @return [Appium::Driver] The driver object created based on passed params above
  def create_driver(test_name)
    appium_txt = File.join(Dir.pwd,'./lib/appium.txt')
    caps = Appium.load_appium_txt file: appium_txt
    name = test_name
    puts caps
    Appium::Driver.new(caps).start_driver
    Appium.promote_appium_methods Object
    return driver
  end


  def create_driver1(test_name)
    appium_txt = File.join(Dir.pwd,'./config/appium.txt')
    caps = Appium.load_appium_txt file: appium_txt
    name = test_name
    puts caps
    Appium::Driver.new(caps).start_driver
    Appium.promote_appium_methods Object
    return driver
  end

end
end