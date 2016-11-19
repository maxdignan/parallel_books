class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.string :img
      t.string :pdf
      t.float :price

      t.timestamps null: false
    end
  end
end
