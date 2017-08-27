class OrdersController < ApplicationController

  def new
    new_order = Order.new
    @order = current_order
    session[:order_id] = @order.id
    redirect_to products_path
  end

  def destroy
    @order = current_order
    @order.destroy
    session[:order_id] = nil
    redirect_to products_path
  end

  def finalize
    @order = Order.find(params[:order_id])
    @order.status = "Closed"
    @order.save
    new_order = Order.new
    new_order.save
    current_order = new_order
    session[:order_id] = new_order.id
    binding.pry
    redirect_to products_path
  end

end
