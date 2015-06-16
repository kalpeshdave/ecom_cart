class CartsController < ApplicationController
  before_filter :authenticate_user!
  
  def show
    @order_items = current_order.order_items
  end
end
