class AddProperColumnNamesToKeys < ActiveRecord::Migration
  def change
    rename_column :keys, :book, :book_id
  end
end
