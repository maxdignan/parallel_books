class BooksController < ApplicationController
  before_action :protect_routes

  def index
    @books = Book.all
  end

  def show
    book = Book.find params[:book_id]
  end
end
