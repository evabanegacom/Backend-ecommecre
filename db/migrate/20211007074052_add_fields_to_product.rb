class AddFieldsToProduct < ActiveRecord::Migration[6.1]
  def change
    add_column :products, :avatar_two, :string, default: 'avatar_two'
  end
end
