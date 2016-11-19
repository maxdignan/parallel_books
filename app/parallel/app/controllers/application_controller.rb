class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def user
    User.find session[:user_id]
  end

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
