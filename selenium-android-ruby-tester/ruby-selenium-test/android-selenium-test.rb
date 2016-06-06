
require 'selenium-webdriver'

begin
  caps = {
    'chromeOptions' => {
      'androidPackage' => 'com.android.chrome',
    }
  }
  driver = Selenium::WebDriver.for :remote, :url => "http://localhost:9515", :desired_capabilities => caps
  driver.get "http://www.google.com"
  driver.save_screenshot "die_Google.png"
  driver.quit
end

