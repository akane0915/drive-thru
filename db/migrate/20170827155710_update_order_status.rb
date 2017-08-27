class UpdateOrderStatus < ActiveRecord::Migration[5.1]
  def change
    remove_column :orders, :status, :integer
    add_column :orders, :status, :string, default: "Open"
  end
end
