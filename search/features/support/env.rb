require 'data_magic'
require 'byebug'
require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'


Capybara.configure do |config|
  config.default_driver = :selenium
  config.app_host   = 'http://www.google.com'
end

World(Capybara::DSL)
World(Capybara::RSpecMatchers)

Capybara.ignore_hidden_elements = false
