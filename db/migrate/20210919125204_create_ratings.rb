class CreateRatings < ActiveRecord::Migration[6.1]
  def change
    create_table :ratings do |t|
      t.string :name
      t.text :comment
      t.references :product, null: false, foreign_key: true

      t.timestamps
    end
  end
end
