require 'selenium-webdriver'
require 'appium_lib'

class LoginScreen

 # Locators on the login page
  LoginScreen = { xpath: '//android.widget.TextView[@text="Sign in with your SlideShare account"]'}
  UserName = { xpath: '//android.widget.RelativeLayout//android.widget.EditText' }
  Password = { xpath: '//android.widget.RelativeLayout//android.widget.EditText[2]' }
  Submit = { xpath: '//android.widget.RelativeLayout//android.widget.Button' }
  StartedButton = { xpath: '//android.widget.Button[@text="Get Started"]' }
  

  def initialize(driver)
    @driver  = driver
    ss_login_screen
  end

  # method to navigate to login screen
  def ss_login_screen
  wait{displayed?(LoginScreen)}
  driver.find_element(LoginScreen).click
  end

  # method to enter text in username field
  def username(username)
    wait{displayed?(UserName)}
    user_name_field = driver.find_element(UserName)
    user_name_field.send_keys(username)
  end

  # method to enter password in password field
  def password(password)
    password_field = driver.find_element(Password)
    password_field.send_keys(password)
  end

  # click on the login button
  def submit
    driver.find_element(Submit).click
  end

  # method to verify the text of get_started text to assure that
  # login is successful
  def login_successful?(button_text)
    wait { displayed?(StartedButton) }
    text = driver.find_element(StartedButton).text.include? button_text
  end

  def wait(seconds=60)
    Selenium::WebDriver::Wait.new(:timeout => seconds).until { yield }
  end

  def displayed?(locator)
    driver.find_element(locator).displayed?
    true
  rescue Selenium::WebDriver::Error::NoSuchElementError
    false
  end

end