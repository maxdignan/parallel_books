class BooksController < ApplicationController
  def index
    @books = Book.all
    @books = @books.map { |book| book.users.includes(user) }
  end

  def show
    book = Book.find params[:book_id]
  end
end
