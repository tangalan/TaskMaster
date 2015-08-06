When(/^I create a random task in San Francisco$/) do
  fill_in "Description", :with => "test task 1"
  choose("Housework")
  fill_in "task_Reward", :with => 10000
  fill_in "task_address", :with => "Golden Gate Bridge, San Francisco"
  click_button "Submit"
end

When(/^I create a random task in Philadelphia$/) do
  fill_in "Description", :with => "test task 2"
  choose("Housework")
  fill_in "task_Reward", :with => 10000
  fill_in "task_address", :with => "Huntsman Hall, Philadelphia"
  click_button "Submit"
end

Then /^I should see a static map$/ do
  page.should have_xpath("//img[@alt = 'Staticmap?size=450x300&sensor=false&zoom=16&markers=37.8199286%2c 122']")
end

Then /^I should see an entry$/ do |table|
  table.hashes.each do |row|
    row[:Description].should_not be_nil
  end
end

Then /^I should not see an entry$/ do |table|
  table.hashes.each do |row|
    row[:Description].should be_nil
  end
end


Then(/^table should have (\d+) entries$/) do |arg1|
  page.all("table tr").count.should == arg1.to_i
end

