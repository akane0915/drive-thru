class ProductsController < ApplicationController

  def index
    @products = Product.all

    if session[:order_id]
      current_order = Order.find(session[:order_id])
    else
      current_order = Order.new
    end

    @order_item = current_order.order_items.new
    current_order.order_items

    @orders = Order.all
  end
end
