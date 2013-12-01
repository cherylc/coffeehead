class AddRoastedAtToRoastNotes < ActiveRecord::Migration
  def change
    add_column :roast_notes, :roasted_at, :date
    execute "update roast_notes set roasted_at = CURRENT_DATE"
    change_column :roast_notes, :roasted_at, :date, null: false
  end
end
