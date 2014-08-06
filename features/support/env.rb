require 'watir-webdriver'
require 'headless'
require 'cucumber'
require 'rspec'
require File.expand_path('features/lib/search_methods')
require 'cucumber/formatter/gherkin_formatter_adapter'
require 'cucumber/formatter/io'
require 'gherkin/formatter/json_formatter'
#require 'rspec-expectations'


headless = Headless.new
headless.start

# browser = Watir::Browser.new :firefox
browser = Watir::Browser.new

CONFIG = YAML.load_file(File.join(File.dirname(__FILE__), '..','..','config', 'config.yml'))

baseURL = CONFIG['url']

Before do
  @browser = browser
  @url = baseURL
end

at_exit do
  browser.close
  headless.destroy
end
