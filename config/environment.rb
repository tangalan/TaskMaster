# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

# ActionMailer::Base.delivery_method = :smtp
# 
# ActionMailer::Base.smtp_settings = {
   # :address => "smtp.gmail.com",
   # :port => 25,
   # :domain => "gmail.com",
   # :authentication => :login,
   # :user_name => "taskmasterapplication@gmail.com",
   # :password => "taskmasterapp",
   # :enable_starttls_auto => true
# }
# 
# 
# ActionMailer::Base.default_content_type = "text/html"