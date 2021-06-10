class Order < ApplicationRecord

  belongs_to :user
  has_many :join_items_orders, dependent: :destroy
  has_many :items, through: :join_items_orders

end
