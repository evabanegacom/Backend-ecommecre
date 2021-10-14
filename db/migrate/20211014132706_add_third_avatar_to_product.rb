class AddThirdAvatarToProduct < ActiveRecord::Migration[6.1]
  def change
    add_column :products, :avatarthree, :string, null: true
  end
end
