class Key < ActiveRecord::Base
  has_one :checkout
  belongs_to :book

  class << self
    def next_key_for_book book
      self.where(book: book, checkout: nil)
    end
  end
end
