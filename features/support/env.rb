require 'watir-webdriver'
require 'headless'
require 'cucumber'
require 'rspec'
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
