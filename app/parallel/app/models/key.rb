class Key < ActiveRecord::Base
  has_one :checkout
  belongs_to :book
end
