class AddProfileToUsers < ActiveRecord::Migration
  def change
    add_column :users, :profile, :string, limit: 25
  end
end
