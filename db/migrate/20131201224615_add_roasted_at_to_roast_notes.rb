class AddRoastedAtToRoastNotes < ActiveRecord::Migration
  def change
    add_column :roast_notes, :roasted_at, :date, null: false
  end
end
