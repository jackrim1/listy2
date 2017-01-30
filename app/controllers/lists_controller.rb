class ListsController < ApplicationController


  def index
    @lists = List.all
  end

  def new
    @list = List.new
  end

  def show
    @list = List.find(list_params)
  end

  def create
    @list = List.new(params[:list].permit(:name))
    @list.user = current_user
    @list.save
    redirect_to '/lists'
  end

  def list_params
    params.require(:list).permit(:name)
  end

end
