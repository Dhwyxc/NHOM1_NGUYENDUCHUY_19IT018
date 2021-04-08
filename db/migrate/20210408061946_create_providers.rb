class CreateProviders < ActiveRecord::Migration[6.1]
  def change
    create_table :providers do |t|
      t.string :nameProvider
      t.string :add
      t.string :phonenum

      t.timestamps
    end
  end
end
