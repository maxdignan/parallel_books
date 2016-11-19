class Checkout < ActiveRecord::Base
  belongs_to :book
  belongs_to :user
  belongs_to :key
end
