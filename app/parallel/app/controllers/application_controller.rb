class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :user

  def user
    return if session[:user_id].nil?
    @user ||= User.find session[:user_id]
  end

  def protect_routes
    redirect_to '/' if session[:user_id].nil?
    return
  end

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
