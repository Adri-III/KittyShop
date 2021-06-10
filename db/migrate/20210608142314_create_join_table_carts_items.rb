class CreateJoinTableCartsItems < ActiveRecord::Migration[5.2]
  def change
    create_table :join_table_carts_items do |t|
      t.belongs_to :cart, index: true
      t.belongs_to :item, index: true
      
      t.timestamps
    end
  end
end
