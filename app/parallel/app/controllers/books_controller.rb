class BooksController < ApplicationController
  before_action :protect_routes

  def index
    @books = user.books
    @on_my_books_page = true
  end

  def show
    if checkout_book == false
      redirect_to '/books'
      return
    end

    @book = Book.find params[:id]
  end

  def load_pdf
    @book = Book.find params[:id]
    user.reload
    if user.checkout.book == @book
      # response.header = 'application/pdf'
      send_data File.read('./app/protected/' + @book.pdf.gsub('-', '')), type: 'application/pdf'
      return
    end
    redirect_to '/books'
  end

  def buy_book
    user.books << Book.find(params[:id])
    redirect_to '/books'
  end

  def checkout_book
    # byebug
    remove_existing_checkouts_for_user user

    book = Book.find params[:id]
    if user.books.include? book

      def get_book_inner(book)
        next_key = Key.next_key_for_book(book)
        Checkout.create(key: next_key, user: user, book: book)
      end

      if book.keys.length > book.checkouts.length
        #create checkout
        get_book_inner(book)
      else
        #buy key
        Key.create book: book
        get_book_inner(book)
      end
    else
      flash[:not_purchased_error] = "You don't own this book."
      return false
    end
  end

  def release_book
    remove_existing_checkouts_for_user user
  end

  private

  def remove_existing_checkouts_for_user user
    existing_checkouts = Checkout.where(user: user)
    existing_checkouts.each(&:destroy) unless existing_checkouts.empty?
  end
end
