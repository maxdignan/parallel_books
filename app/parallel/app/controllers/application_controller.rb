class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :user


  def user
    if session[:user_id].nil?
      redirect_to '/' unless params[:controller] == 'index'
      return
    end
    @user ||= User.find session[:user_id]
  end

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
