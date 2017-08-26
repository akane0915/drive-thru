class OrderItemsController < ApplicationController



  def create
    if session[:order_id]
      current_order = Order.find(session[:order_id])
    else
      current_order = Order.new
    end
    @order = current_order
    @item = @order.order_items.new(item_params)
    @order.save
    session[:order_id] = @order.id
    redirect_to products_path
  end

  def update
    @order = current_order
    @item = @order.order_items.find(params[:id])
    @item.update_attributes(item_params)
    @order.save
  end

  def destroy
    @order = current_order
    @item = @order.order_items.find(params[:id])
    @item.destroy
    @order.save
    respond_to do |format|
      format.html { redirect_to products_path }
      format.js
    end
  end

  private

  def item_params
    params.require(:order_item).permit(:product_id)
  end
end
