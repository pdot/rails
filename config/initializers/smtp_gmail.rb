# This file is automatically copied into RAILS_ROOT/initializers

ruby_version = /([0-9]+)\.([0-9]+)\.([0-9]+)/.match(`ruby -v`)
if ruby_version[1].to_i <= 1 and ruby_version[2].to_i <= 8 and
ruby_version[3].to_i <= 6
  require "smtp_tls"
end

config_file = "#{RAILS_ROOT}/config/smtp_gmail.yml"
raise "Sorry, you must have #{config_file}" unless File.exists?(config_file)

config_options = YAML.load_file(config_file) 
ActionMailer::Base.smtp_settings = {
  :address => "smtp.gmail.com",
  :port => 587,
  :authentication => :plain,
  :enable_starttls_auto => true
}.merge(config_options) # Configuration options override default options
