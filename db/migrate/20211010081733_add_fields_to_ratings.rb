class AddFieldsToRatings < ActiveRecord::Migration[6.1]
  def change
    add_column :reviews, :rating, :string, null: false
  end
end
