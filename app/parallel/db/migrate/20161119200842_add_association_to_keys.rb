class AddAssociationToKeys < ActiveRecord::Migration
  def change
    add_column :keys, :book, :integer
    add_index  :keys, :book
  end
end
