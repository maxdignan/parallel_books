class PurchasePagesController < ApplicationController
  before_action :protect_routes

  def index
    @books = Book.all
    @books = @books.reject do |book|
      book.users.include? user
    end
  end
end
