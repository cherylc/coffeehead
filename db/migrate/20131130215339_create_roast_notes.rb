class CreateRoastNotes < ActiveRecord::Migration
  def change
    create_table :roast_notes do |t|
      t.integer :user_id,       null: false
      t.integer :roast_id,      null: false
      t.text :content,          null: false

      t.timestamps
    end

    add_index :roast_notes, [:user_id]
    add_index :roast_notes, [:roast_id]
  end
end
