# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
  :user_name      => 'labcompufba',
  :password       => ENV['SENDGRID_API_KEY'],
  :address        => 'smtp.sendgrid.net',
  :port           => '587',
  :authentication => :plain,
  :domain         => 'heroku.com',
  :enable_starttls_auto => true
} 