class PurchasePageController < ApplicationController
  def index
    books = Book.all
  end
end
