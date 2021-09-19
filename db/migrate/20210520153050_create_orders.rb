class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.text :address
      t.integer :total
      t.text :cartitems, array: true, default: []
      t.references :user, null: false, foreign_key: true

      t.timestamps
      
    end
  end
end
