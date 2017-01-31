class ItemsController < ApplicationController

  def index
    @items = Item.all
  end

  def new
    @item = Item.new
  end

  def show
    @item = Item.find(item_params)
  end

  def create
    @item = Item.new(params[:item].permit(:name))
    redirect_to '/lists'
  end

  def item_params
    params.require(:item).permit(:name)
  end

end
