class Book < ActiveRecord::Base
  has_many :checkouts
  has_many :keys
  has_and_belongs_to_many :users
  has_many :keys
end
