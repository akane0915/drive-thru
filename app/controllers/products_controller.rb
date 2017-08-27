class ProductsController < ApplicationController

  def index
    @products = Product.all
    @order_items = current_order.order_items
    @order_item = current_order.order_items.new
    @orders = Order.all
    @open_order_count = Order.where(:status => "Open").count
    @order = current_order
  end
end
