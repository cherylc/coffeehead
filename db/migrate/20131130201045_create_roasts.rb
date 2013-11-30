class CreateRoasts < ActiveRecord::Migration
  def change
    create_table :roasts do |t|
      t.integer :business_id,             null: false
      t.string :name,         limit: 150, null: false
      t.string :blend_type,   limit: 50,  null: false

      t.timestamps
    end

    add_index :roasts, [:business_id]
    add_index :roasts, [:blend_type]
  end
end
