class UsersController < ApplicationController
  def new
    User.new
  end

  def create
    user = User.new(user_params)
    if user.save
      session[:user_id] = user.id
      redirect_to '/purchase_books'
    else
      redirect_to '/signup'
    end
  end
end
