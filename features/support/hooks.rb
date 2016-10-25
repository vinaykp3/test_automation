ProjectRootPath = File.expand_path("../..",File.dirname(__FILE__))
puts "Path: #{ProjectRootPath}"
# DataFactory::Configuration.set_app_path(ProjectRootPath)
Instance = ENV['TEST_ENV']

unless Instance.nil?
	
end
Url = "https://www.myntra.com"
Capybara.register_driver :selenium do |app|
  profile = Selenium::WebDriver::Firefox::Profile.new
  profile['browser.download.dir'] = "#{ProjectRootPath}/artifacts/downloads"
  profile['browser.download.folderList'] = 2
  profile['browser.download.panel.shown'] = false
  profile['browser.helperApps.neverAsk.saveToDisk'] = 'application/pdf,application/vnd.ms-excel,text/csv,application/x-msexcel,application/excel,application/x-excel,text/html,text/plain,application/vnd.openxmlformats-officedocument.spreadsheetml.sheet'
  # Capybara::Selenium::Driver.new(app, browser: :firefox, profile: profile)
  Capybara::Selenium::Driver.new(app, browser: :firefox, marionette: true)
end

Capybara.default_selector = :css
Capybara.default_driver = :selenium
Capybara.default_host = Url
Capybara.default_max_wait_time = 5
#Capybara.ignore_hidden_elements = false
# window = Capybara.current_session.driver.browser.manage.window
# window.resize_to(1280, 800) # width, height