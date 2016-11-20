class AddAssociationsToNotes < ActiveRecord::Migration
  def change
    add_column :notes, :user_id, :integer
    add_index  :notes, :user_id

    add_column :notes, :book_id, :integer
    add_index  :notes, :book_id
  end
end
