# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.
class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details
  # Scrub sensitive parameters from your log
  filter_parameter_logging :password
  include ExceptionNotifiable
  # Be sure to include AuthenticationSystem in Application Controller instead
  include AuthenticatedSystem
  
  #before_filter :login_required #, :except => %w[ index show ]

# private
#   def current_user 
#     @_current_user ||= session[:current_user_id] && User.find(session[:current_user_id])
#   end 
#    
#   def require_login
#     unless logged_in
#   end
#   
#   def logged_in?
#     !!current_user
#   end
end
