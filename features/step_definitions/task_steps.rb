Given(/^I have tasks titled (.+)$/) do |tasks|
  tasks.split(', ').each do |task|
    Task.create(:Description => title, :Category => 'Housework', :Date => 18/07/2015, :Reward => 100)
  end
end

When(/^I create a new task$/) do
  visit new_task_path
end

When(/^I create a random task$/) do
  fill_in "Description", :with => "test task"
  choose("Housework")
  fill_in "task_Reward", :with => 10000
  click_button "Submit"
end

Then /^I should have a mailto link$/ do 
  page.should have_xpath("//a[contains(@href,email)]")
end