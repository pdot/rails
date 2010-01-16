# sv app template
def insert_lines(file,lines,position=-2,prefix="  ")
  raw_lines = File.readlines(file)
  for line in lines
    raw_lines.insert(position, prefix + line)    
  end
  File.open(file,"w"){|f| f.puts raw_lines.delete_if{|l| l.strip.blank?}.map{|l| l.strip + "\n"}.join("")}
end

def insert_model_lines(model,lines)
  model_file = "app/models/#{model}.rb"
  insert_lines model_file, lines, -2, "  "
end

# Delete unnecessary files
  run "rm README"
  run "rm -f public/index.html"
  run "rm -f public/favicon.ico"
  run "rm -f public/robots.txt"
  run "rm -f public/images/rails.png"

# Set up svn repository
  #TODO

# Copy database.yml for distribution use
  run "cp config/database.yml config/database.yml.example"
#Setup an initializer for migration datatypes
  rakefile "diagrams.rake", <<-CODE
namespace :doc do
  namespace :diagram do
    task :models do
      sh "railroad -i -m -M  | sed 's/fontsize=14/fontsize=12/g' | sed 's/created_at :datetime\\\\\\\\l//g' | sed 's/updated_at :datetime\\\\\\\\l//g' > doc/models.dot"
      sh "dot -Tpng < doc/models.dot > doc/models.png"
      sh "dot -Tsvg < doc/models.dot > doc/models.svg"
    end

    task :models_brief do
      sh "railroad -i -b -m -M | sed 's/fontsize=14/fontsize=12/g' | sed 's/created_at :datetime\\\\\\\\l//g' | sed 's/updated_at :datetime\\\\\\\\l//g' > doc/models_brief.dot"
      sh "dot -Tpng < doc/models_brief.dot > doc/models_brief.png"
      sh "dot -Tsvg < doc/models_brief.dot > doc/models_brief.svg"
    end

  end

  task :diagrams => %w(diagram:models diagram:models_brief)
  end
CODE

# Install plugins
#if yes?("Do you want foreign key migrations?") 
  plugin 'redhillonrails_core', :git => "git://github.com/harukizaemon/redhillonrails_core.git"
  plugin 'foreign_key_migrations', :git => "git://github.com/harukizaemon/foreign_key_migrations.git"
#end
plugin 'make_resourceful', :git => "git://github.com/hcatlin/make_resourceful.git"
plugin 'restful_authentication', :git => "git://github.com/technoweenie/restful-authentication.git"
#ENV['HOPTOAD_API_KEY'] = '....fillmein....'
#if ENV['HOPTOAD_API_KEY'] || yes?("Do you want hoptoad?")
#  plugin 'hoptoad', :git => 'git://github.com/thoughtbot/hoptoad_notifier.git'
#  initializer 'hoptoad.rb', <<-CODE
#  HoptoadNotifier.configure do |config|
#    config.api_key = '#{ENV['HOPTOAD_API_KEY'] || ask("What is the Hoptoad API key for this app?")}'
#  end
#  CODE
#elsif yes?("Do you want exception notifier?")
  plugin 'exception_notification', :git => "git://github.com/rails/exception_notification.git"
  insert_lines "app/controllers/application_controller.rb",["include ExceptionNotifiable"]
  insert_lines "config/environment.rb", ["ExceptionNotifier.exception_recipients = %w(corey.martella@gmail.com)"], -1, ""
#end
#if yes?("Do you want exception notifier?")
  plugin 'exception_notification', :git => "git://github.com/rails/exception_notification.git"
  insert_lines "app/controllers/application_controller.rb",["include ExceptionNotifiable"]
  insert_lines "config/environment.rb", ["ExceptionNotifier.exception_recipients = %w(admin@pdot.ca)"], -1, ""
#end

# Install all gems
gem 'thoughtbot-factory_girl', :lib => 'factory_girl', :source => 'http://gems.github.com'
#if yes?("Do you want RedCloth?")
  gem 'RedCloth', :lib => 'redcloth'
#end
gem "josevalim-rails-footnotes",  :lib => "rails-footnotes", :source => "http://gems.github.com", :env => "development"
#get the partials textmate footnotes
run 'wget http://gist.github.com/raw/142961/c965be63aad62a1c142bc7eb2113445b0f1399e8/partials_note.rb -O config/initializers/partials_note.rb'

gem "mislav-will_paginate",  :lib => "will_paginate", :source => "http://gems.github.com"
#if yes ?("Do you want AASM?")
  gem "rubyist-aasm",  :lib => "aasm", :source => "http://gems.github.com"
#end
gem 'mbleigh-uberkit', :lib => 'uberkit', :source => 'http://gems.github.com/'
gem 'thoughtbot-pacecar', :lib => 'pacecar', :source => 'http://gems.github.com'
gem 'thoughtbot-sortable_table', :lib => 'sortable_table', :source => 'http://gems.github.com'
gem "openrain-action_mailer_tls", :lib => "smtp_tls.rb", :source => "http://gems.github.com"
rake('gems:install', :sudo => true)

file 'lib/hodel_3000_compliant_logger.rb', '
require \'logger\'
require \'English\'
# A logger for use with pl_analyze and other tools that expect syslog-style log output.
# Jan  2 03:38:05 topfunky postfix/postqueue[2947]: warning blah blah blah
class Hodel3000CompliantLogger < Logger
  def format_message(severity, timestamp, progname, msg)
    "#{timestamp.strftime("%b %d %H:%M:%S")} #{hostname} rails[#{$PID}]: #{msg2str(msg).gsub(/\n/, \'\').lstrip}\n"
  end

  private
  def hostname
    @parsed_hostname ||= Socket.gethostname.split(\'.\').first
  end

  def msg2str(msg)
    case msg
    when ::String
      msg
    when ::Exception
      "#{ msg.message } (#{ msg.class }): " <<
      (msg.backtrace || []).join(" | ")
    else
      msg.inspect
    end
  end
end'
environment <<-CODE
  require 'hodel_3000_compliant_logger'
  config.logger = Hodel3000CompliantLogger.new(config.log_path)
  config.load_paths += %W(\#{Rails.root}/app/mailers \#{Rails.root}/app/sweepers \#{Rails.root}/app/observers)
  def yell(msg) 
    #return if RAILS_ENV == 'production' || RAILS_ENV == 'admin'
    # stupid simple logging:
    f = File.open(File.expand_path(File.dirname(__FILE__) + "/../log/yell.log"),"a") 
    f.puts \"\#{Time.now.to_s :compact_with_seconds} -- \#{msg}\"
    f.close
  end
CODE
initializer 'date_formats.rb', <<-CODE
ActiveSupport::CoreExtensions::Time::Conversions::DATE_FORMATS.merge!(
  :display => "%b %e %Y %H:%M",
  :compact => "%b %e %Y %H:%M",
  :compact_no_year => "%b %e %H:%M",
  :compact_with_seconds => "%b %e %Y %H:%M:%S",
  :compact_with_weekday => "%a %b %e %Y %H:%M",
  :compact_with_weekday_no_year => "%a %b %e %H:%M",
  :compact_with_weekday_with_year => "%a %b %e %Y %H:%M",
  :time_only => "%H:%M:%S",
  :chart_time_with_seconds => "%H:%M:%S",
  :chart_time => "%H:%M",
  :chart_date => "%a %b %e"
)
ActiveSupport::CoreExtensions::Date::Conversions::DATE_FORMATS.merge!(
  :display => "%b %e %Y",
  :compact => "%b %e %Y",
  :compact_weekday => "%a %b %e %Y",
  :compact_weekday_no_year => "%a %b %e",
  :compact_weekday_with_year => "%a %b %e %Y",
  :compact_tz => "%b %e %Y"
)
CODE
#generate a controller with an index page
generate(:controller, "pages", "index")
#Do some routing
route "map.root :controller => 'pages', :action => 'index'"
# Setup Haml
#if yes?("Do you want HAML?")
  run "haml --rails ." 
  run 'mv app/views/pages/index.html.erb app/views/pages/index.html.haml'
#end

#do some scaffolding
#Build schema
generate(:authenticated, "user", "sessions --aasm")
generate(:shoulda_scaffold, "award", "name:string description:text")
generate(:shoulda_scaffold, "nominee", "name:string description:text movie_name:string first_name:string last_name:string")
generate(:shoulda_scaffold, "nomination", "award:belongs_to nominee:belongs_to")
generate(:shoulda_scaffold, "league", "name:string passcode:string description:text ")
generate(:shoulda_scaffold, "selection", "user:belongs_to league:belongs_to")

insert_model_lines "nomination", ["belongs_to :award", "belongs_to :nominee"]
insert_model_lines "award", ["has_many :nominations", "has_many :nominees, :through => :nominations"]
insert_model_lines "nominee", ["has_many :nominations", "has_many :awards, :through => :nominations"]
insert_model_lines "selection", ["has_one :nomination", "belongs_to :user", "belongs_to :league"]
insert_model_lines "user", ["has_and_belongs_to_many :leagues", "has_many :selections"]
insert_model_lines "league", ["has_and_belongs_to_many :users", "has_many :selections"]
capify!
run 'cp config/environments/production.rb config/environments/staging.rb'
file "config/deploy/production.rb", "set :rails_env, 'production'"
file "config/deploy/staging.rb", "set :rails_env, 'staging'"

rake('db:migrate:reset doc:diagrams')
run 'annotate -p after'

# Success!
puts "SUCCESS!"