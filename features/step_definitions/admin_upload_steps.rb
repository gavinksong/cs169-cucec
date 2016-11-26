require 'pathname'
path = ""
Given(/^a "([^"]*)" file exists for "([^"]*)" for (today|tomorrow)$/) do |type, feature, day|
  if day == "today"
    day = Date.today.to_s
  else
    day = (Date.today + 1).to_s
  end
  path = "public/#{day}_" + feature + "." + type
end

Given(/^it has content "([^"]*)"$/) do |content|
  File.open(path, "w+") do |f|
    f.write(content)
  end
end

When(/^I upload "([^"]*)" for "([^"]*)" for (today|tomorrow)$/) do |type, feature, day|
  click_link "new_resource"
  if day == "today"
    day = Date.today.to_s
  else
    day = (Date.today + 1).to_s
  end
  path = "public/#{day}_" + feature + "." + type
  page.attach_file("resource_attachment", path)
  fill_in('resource_name', with: path)
  click_button 'Save Text'
end

Given(/^it is tomorrow$/) do
  class Date
    @tom = self.today + 1
    def self.today
      return @tom
    end
  end
end

Given(/^no content has been uploaded$/) do
  if Pathname.new('public/uploads').directory?
    Dir.foreach('public/uploads') do |item|
      next if item == '.' or item == '..' or item == 'tmp'
      FileUtils.rm_rf('public/uploads/' + item)
    end
  end
end

Then (/^Delete all files$/) do
  step "no content has been uploaded"
  Dir.foreach('public') do |item|
    if item.start_with?((Date.today - 1).to_s, (Date.today).to_s, (Date.today + 1).to_s) # lol messed up date class
      FileUtils.rm_rf('public/' + item)
    end
  end
end

Given /^I successfully upload files for (.*)$/ do |day|
  steps %{
    Then I should be on the admin dashboard page
    When I follow "Upload"
    Then I should be on the Upload page
    When I upload "txt" for "read_english" for #{day}
    Then I should see "Upload successful"
    Then I should be on the Upload page
    When I upload "txt" for "read_chinese" for #{day}
    Then I should see "Upload successful"
  }
end