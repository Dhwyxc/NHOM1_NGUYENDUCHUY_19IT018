class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :nameProduct
      t.references :publisher, null: false, foreign_key: true
      t.string :specifi
      t.references :category, null: false, foreign_key: true
      t.integer :price
      t.references :provider, null: false, foreign_key: true

      t.timestamps
    end
  end
end
