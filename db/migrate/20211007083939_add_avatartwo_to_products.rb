class AddAvatartwoToProducts < ActiveRecord::Migration[6.1]
  def change
    add_column :products, :avatartwo, :string, null: true
  end
end
