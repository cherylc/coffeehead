class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.integer :business_id,              null: false
      t.string :street,        limit: 100, null: false
      t.string :street2,       limit: 100
      t.string :city,          limit: 50,  null: false
      t.string :state,         limit: 2,   null: false
      t.string :postal_code,   limit: 10,  null: false
      t.string :phone,         limit: 15
      t.string :neighborhood,  limit: 100, null: false

      t.timestamps
    end

    add_index :locations, [:business_id]
    add_index :locations, [:neighborhood]
    add_index :locations, [:postal_code]
  end
end
