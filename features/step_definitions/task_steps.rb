Given(/^I have tasks titled (.+)$/) do |tasks|
  tasks.split(', ').each do |task|
    Task.create(:Description => title, :Category => 'Housework', :Date => 18/07/2015, :Reward => 100)
  end
end

When /^I fill in "(.*?)" date field with "(.*?)"$/ do |field_name, date_components|
  label = find("label", text: field_name)
  select_base_id = label[:for]
  date_components.split(",").each_with_index do |value, index|
    select value.strip, from: "#{select_base_id}_#{index+1}i"
  end
end

When(/^I create a new task$/) do
  visit new_task_path
end


When(/^I press 'Submit'$/) do
  
end