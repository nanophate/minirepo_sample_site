require 'rspec'
require 'capybara/rspec'
require 'selenium-webdriver'

Capybara.app = eval("Rack::Builder.new {( " + File.read(File.dirname(__dir__) + '/config.ru') + "\n )}")

Capybara.javascript_driver = :selenium_chrome_headless
Capybara.server = :webrick

RSpec.configure do |config|
  config.mock_with :rspec
end
