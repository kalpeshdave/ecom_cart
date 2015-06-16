class MenusController < ApplicationController
  before_filter :authenticate_user!

  def index
    @menus = current_user.chef? ? current_user.menus : current_user.menus.where(valid_date: Date.today)
  end

  def new
    @menu = Menu.new
  end

  def create
    @menu = Menu.new(params[:menu].merge(:user => current_user))
    if @menu.save
      redirect_to menus_url, notice: "Menu Cerated"
    else
      render :new
    end
  end

  def edit
    @menu = Menu.find params[:id]
  end

  def update
    @menu = Menu.find params[:id] 
    if @menu.update_attributes(params[:menu])
      redirect_to menus_url, notice: "Menu Updated"
    else
      render :edit
    end
  end

  def show
    @menu = Menu.find params[:id]
  end
end