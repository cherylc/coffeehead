class AddPurchaseUrlToRoasts < ActiveRecord::Migration
  def change
    add_column :roasts, :purchase_url, :string, limit: 255
  end
end
