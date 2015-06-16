class ChefsController < ApplicationController
  before_filter :authenticate_user!
  
  def index
    @chefs = Chef.all
  end

  def show
    @chef = Chef.find(params[:id])
  end
end
