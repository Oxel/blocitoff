class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :authenticate_user

  protected

  def authenticate_user
    redirect_to sign_up_path unless current_user
  end

  def current_user
    @current_user ||= User.find_by(id: session[:user])
  end

end
