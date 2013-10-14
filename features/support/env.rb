require 'rubygems'
require 'capybara'
require 'capybara/dsl'
require 'rspec'
require 'mysql2'
require 'php_serialize'
require 'capybara-webkit'
#require 'capybara/poltergeist'

Capybara.run_server = false
Capybara.default_selector = :css
Capybara.default_wait_time = 10

# set firefox driver by default
#Capybara.default_driver = :selenium

# set google chrome driver
#Capybara.register_driver :selenium do |app|
#  Capybara::Selenium::Driver.new(app, :browser => :chrome)
#end

# set webkit driver
#Capybara.default_driver = :webkit
#Capybara.javascript_driver = :webkit
#Capybara.register_driver :webkit_ignore_ssl do |app|
#  browser = Capybara::Webkit::Browser.new(Capybara::Webkit::Connection.new).tap do |browser|
#    browser.ignore_ssl_errors
#  end
#  Capybara::Webkit::Driver.new(app, :browser => browser)
#end
#Capybara.javascript_driver = :webkit_ignore_ssl

module Helpers
  def without_resynchronize
    page.driver.options[:resynchronize] = false
    yield
    page.driver.options[:resynchronize] = true
  end
end

World(Capybara::DSL, Helpers)
