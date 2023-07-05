class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.string :full_name
      t.string :phone_number
      t.string :email

      t.timestamps
    end
  end
end
