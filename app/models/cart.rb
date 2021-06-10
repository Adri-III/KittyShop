class Cart < ApplicationRecord

    belongs_to :user
	has_many :join_table_carts_items, dependent: :destroy
	has_many :items, through: :join_table_carts_items
    
end
