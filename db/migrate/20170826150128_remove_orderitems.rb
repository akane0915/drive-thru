class RemoveOrderitems < ActiveRecord::Migration[5.1]
  def change
    drop_table :orderitems
  end
end
