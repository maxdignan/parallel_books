class AddProperColumnNamesToCheckouts < ActiveRecord::Migration
  def change
    rename_column :checkouts, :book, :book_id
    rename_column :checkouts, :user, :user_id
    rename_column :checkouts, :key, :key_id
  end
end
