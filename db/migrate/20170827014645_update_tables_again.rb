class UpdateTablesAgain < ActiveRecord::Migration[5.1]
  def change
    add_column :order_items, :quantity, :integer
    add_column :orders, :status, :integer
    add_column :orders, :total_price, :decimal
  end
end
