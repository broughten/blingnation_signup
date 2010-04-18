# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.
  
class ApplicationController < ActionController::Base
  include SslRequirement

  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details
  def ssl_required?
    Rails.env.production?
  end

  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password

  def authenticate
    authenticate_or_request_with_http_basic do |username,password|
      username == "bling_admin" && password == "dkj24@$sjLL"
    end
  end
end
