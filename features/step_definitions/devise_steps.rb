Given /^a valid user$/ do
  @user = User.create!({
             :email => "foo@bar.com",
             :password => "12345678",
             :password_confirmation => "12345678"
           })
end

Given /^a logged in user$/ do
  Given "a valid user"
  visit user_session_path
  fill_in "Email", :with => "foo@bar.com"
  fill_in "Password", :with => "12345678"
  click_button "Log in"
end