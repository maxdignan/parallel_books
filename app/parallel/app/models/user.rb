class User < ActiveRecord::Base
  has_secure_password

  has_and_belongs_to_many :books
  has_many :checkouts
end
