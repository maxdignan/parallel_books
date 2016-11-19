class BooksController < ApplicationController
  def index
    books = Book.where()
  end

  def show
    book = Book.find params[:book_id]
  end
end
