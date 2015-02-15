require_relative '../lib/login_screen'
require_relative '../lib/spec_helper'

describe 'Login/logout flow' do
  before :each do
    @valid_user = Integration.config['valid_user']
    @valid_password = Integration.config['valid_password']
    @button_text = Integration.config['get_started']
    @driver = Util.create_driver('Parallel test_1')
    @wait = Selenium::WebDriver::Wait.new(:timeout => Integration.config['explicit_wait_timeout'])
  end

  after :each do
    @driver.quit
  end

  describe 'Login/logout flow' do
    it 'Check SS login/logout' do
      login = LoginScreen.new(@driver)
      login.username(@valid_user)
      login.password(@valid_password)
      login.submit
      result = login.login_successful?(@button_text)
      result.should == true
      sleep 5
    end
  end
end