class AddPrimaryKeys < ActiveRecord::Migration
  def change
    change_column :users, :id, :primary_key
    change_column :keys, :id, :primary_key
    change_column :books, :id, :primary_key
    change_column :checkouts, :id, :primary_key
  end
end
