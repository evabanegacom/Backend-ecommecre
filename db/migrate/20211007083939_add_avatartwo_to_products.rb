class AddAvatartwoToProducts < ActiveRecord::Migration[6.1]
  def change
    add_column :products, :avatartwo, :string, default: 'avatartwo'
  end
end
