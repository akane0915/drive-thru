class Product < ActiveRecord::Base
  has_many :order_items
  validates :name, :presence => true
end
