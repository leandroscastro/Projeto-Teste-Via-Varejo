require 'rspec'
require 'capybara/cucumber'
require 'site_prism'

Capybara.configure do |config|
    config.default_driver = :selenium_chrome
    config.app_host = 'http://www.lourencodemonaco.com.br/vvtest/'
    Capybara.page.driver.browser.manage.window.maximize
    config.default_max_wait_time = 5
end