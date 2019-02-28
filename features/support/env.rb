#!/usr/bin/env ruby

require 'appium_lib'
require 'pry'
require 'logger'
require 'httparty'
require 'json'
require 'rest-client'
require 'rspec/expectations'

# Create a custom World class so we don't pollute `Object` with Appium methods
class AppiumWorld
end

caps_path = File.join(File.dirname(__FILE__), '..', '..', 'caps')
caps_file = File.join(caps_path, "#{ENV['VERSION']}.txt")
caps = Appium.load_appium_txt file: caps_file, verbose: true
Appium::Driver.new(caps, true)
Appium.promote_appium_methods AppiumWorld

Before do |scenario|
    $driver.start_driver
    $driver.alert_accept

    scenario_tags = scenario.source_tag_names
    
end
    
After do |scenario|

    if scenario.passed?
        screenshot_date = Time.now.strftime("%Y-%m-%d_%H-%M-%S")

        unless File.directory?("reports/screenshots/#{scenario.feature.name}_screenshots_#{screenshot_date}") 
            FileUtils.mkdir_p("reports/screenshots/#{scenario.feature.name}_screenshots_#{screenshot_date}")
        end

        time_stamp = Time.now.strftime("%Y-%m-%d_%H.%M.%S")

        screenshot_name = "#{time_stamp}.png"
        screenshot_file = File.join("reports/screenshots/#{scenario.feature.name}_screenshots_#{screenshot_date}", screenshot_name)
        $driver.screenshot(screenshot_file)
        embed("#{screenshot_file}", "image/png")

    else
        screenshot_date = Time.now.strftime("%Y-%m-%d_%H-%M-%S")

        unless File.directory?("reports/screenshots/#{scenario.feature.name}_screenshots_#{screenshot_date}") 
            FileUtils.mkdir_p("reports/screenshots/#{scenario.feature.name}_screenshots_#{screenshot_date}")
        end

        time_stamp = Time.now.strftime("%Y-%m-%d_%H.%M.%S")

        screenshot_name = "#{time_stamp}.png"
        screenshot_file = File.join("reports/screenshots/#{scenario.feature.name}_screenshots_#{screenshot_date}", screenshot_name)
        $driver.screenshot(screenshot_file)
        embed("#{screenshot_file}", "image/png")

    end

    $driver.driver_quit

end

at_exit do
    system "reports/report_builder.rb"
end
