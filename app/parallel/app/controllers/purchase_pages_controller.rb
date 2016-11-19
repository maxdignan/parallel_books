class PurchasePagesController < ApplicationController
  def index
    books = Book.all
  end
end
