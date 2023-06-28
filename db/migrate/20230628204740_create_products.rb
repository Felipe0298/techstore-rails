class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :title
      t.text :description
      t.decimal :price
      t.string :photo1
      t.string :photo2
      t.string :photo3

      t.timestamps
    end
  end
end
