class PurchasePagesController < ApplicationController
  before_action :protect_routes

  def index
    @books = Book.all
  end
end
