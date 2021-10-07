class AddFieldsToProduct < ActiveRecord::Migration[6.1]
  def change
    add_column :products, :avatar_two, :string, default: 'avatar_two'
    add_column :products, :avatar_three, :string, default: 'avatar_three'
    add_column :products, :avatar_four, :string, default: 'avatar_four'
    add_column :products, :avatar_five, :string, default: 'avatar_five'
  end
end
