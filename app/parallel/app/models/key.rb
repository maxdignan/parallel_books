class Key < ActiveRecord::Base
  has_one :checkout
  belongs_to :book

  class << self
    def next_key_for_book book
      all_keys_for_book = where(book: book)
      all_keys_for_book = all_keys_for_book.reject { |key| key.checkout.present? }
      all_keys_for_book.first
    end
  end
end
