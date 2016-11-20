class BooksController < ApplicationController
  before_action :protect_routes

  def index
    @books = Book.all
  end

  def show
    book = Book.find params[:id]
  end

  def buy_book
    user.books << Book.find params[:id]
  end

  def checkout_book
    remove_existing_checkouts_for_user user

    book = Book.find params[:id]
    if user.books.include? book

      def checkout_book
        next_key = Key.next_key_for_book(book)
        Checkout.create(key: next_key, user: user, book: book)
      end

      if book.keys > book.checkouts
        #create checkout
        checkout_book
      else
        #buy key
        Key.create book: book
        checkout_book
      end
    else
      flash[:not_purchased_error] = "You don't own this book."
    end
  end

  def release_book
    remove_existing_checkouts_for_user user
  end

  private

  def remove_existing_checkouts_for_user user
    existing_checkouts = Checkout.where(user: user)
    existing_checkout.each(&:destroy) if existing_checkout.empty?
  end
end
