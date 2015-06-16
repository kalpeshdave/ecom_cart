class ItemsController < ApplicationController
  before_filter :authenticate_user!

  def index
    @items = current_user.chef? ? current_user.items : Item.all
  end
end
