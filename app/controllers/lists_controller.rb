class ListsController < ApplicationController

  def index
    @lists = List.all
  end

  def new
    @list = List.new
  end

  def show
  end

  def create
    @list = List.create(list_params)
    redirect_to '/lists'
  end

  def list_params
    params.require(:list).permit(:name)
  end

end
