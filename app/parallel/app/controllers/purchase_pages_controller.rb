class PurchasePagesController < ApplicationController
  before_action :protect_routes

  def index
    @books = Book.all
    @on_purchase_page = true
  end
end
