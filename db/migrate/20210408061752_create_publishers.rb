class CreatePublishers < ActiveRecord::Migration[6.1]
  def change
    create_table :publishers do |t|
      t.string :nameP
      t.string :nation

      t.timestamps
    end
  end
end
