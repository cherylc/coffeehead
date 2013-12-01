class AddUserProfileDefault < ActiveRecord::Migration
  def up
    change_column :users, :profile, :string, limit: 25, default: "reader"
  end

  def down
  end
end
