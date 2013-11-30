class CreateBusinesses < ActiveRecord::Migration
  def change
    create_table :businesses do |t|
      t.string :name,    limit: 150, null: false
      t.string :website, limit: 250

      t.timestamps
    end

    add_index :businesses, [:name]
  end
end
