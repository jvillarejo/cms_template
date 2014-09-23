require "application_responder"

class ApplicationController < ActionController::Base
  include ErrorHandlers

  self.responder = ApplicationResponder
  respond_to :html, :json

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :authenticate_user!
  helper_method :current_user
  helper_method :back_url

	private
  def authenticate_user!
    redirect_to new_session_path unless current_user
  end

	def current_user
	  @current_user ||= User.find(session[:user_id]) if session[:user_id]
	end

  def back_url(options = {})
    request.referer || root_path
  end
end
