require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'

CONFIG = YAML.load_file(File.join(Dir.pwd, "features/support/config/#{ENV['ENV_TYPE']}.yaml"))
puts CONFIG

Capybara.configure do |config|
  config.default_driver = :selenium_chrome_headless
  config.app_host = CONFIG['url']
  config.default_max_wait_time = 30
end