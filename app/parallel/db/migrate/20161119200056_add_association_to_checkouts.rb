class AddAssociationToCheckouts < ActiveRecord::Migration
  def change
    add_column :checkouts, :book, :integer
    add_index  :checkouts, :book

    add_column :checkouts, :user, :integer
    add_index  :checkouts, :user

    add_column :checkouts, :key, :integer
    add_index  :checkouts, :key
  end
end
