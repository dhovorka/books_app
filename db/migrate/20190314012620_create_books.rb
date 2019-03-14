class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :title
      t.decimal :price, precision:9, scale:2
      t.string :genre
      t.integer :author_id

      t.timestamps
    end
  end
end
