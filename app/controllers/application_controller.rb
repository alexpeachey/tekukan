class ApplicationController < ActionController::Base
  protect_from_forgery
  rescue_from ActiveRecord::RecordNotFound, :with => :not_found
  before_filter :set_timezone
  
  protected
  def not_found
    flash[:error] = "Unfortunately it looks like you took a wrong turn."
    redirect_to unknown_pages_path
  end
  
  def set_timezone
    min = request.cookies["time_zone"].to_i
    Time.zone = ActiveSupport::TimeZone[-min.minutes]
  end
  
end
