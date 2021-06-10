class CreateJoinTableItemsOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :join_table_items_orders do |t|
      t.belongs_to :item, index: true
      t.belongs_to :order, index: true
      
      t.timestamps
    end
  end
end
