class PurchasePagesController < ApplicationController
  def index
    @books = Book.all
    byebug
  end
end
