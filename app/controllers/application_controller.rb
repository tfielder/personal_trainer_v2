class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  #before_action :authenticate_admin!
  allow_browser versions: :modern
  protect_from_forgery with: :exception
  helper_method :current_user
  before_action :authenticate_user

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def authenticate_user
    @current_user
  end
end
