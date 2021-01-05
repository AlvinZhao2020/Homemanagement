class CreateHouses < ActiveRecord::Migration[5.2]
  def change
    create_table :houses do |t|
      t.string :address, null: false
      t.integer :buyin_price, null: false
      t.integer :current_price, null: false
      t.integer :rent, null:false
      t.integer :ownner_id, null:false
      t.timestamps
    end
  end
end
