class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def show
    @item = Item.find(params[:id])
  end

  def new
    @item = Item.new
  end

  def edit
    @item = Item.find(params[:id])
  end

  def create
    item = Item.create(params.require(:item).permit(:name, :price))

    redirect_to items_path
  end
  
  def destroy
    item = Item.destroy(params[:id])

    redirect_to items_path
  end
  
  def update
    item = Item.find(params[:id])
    if item.update(item_params)
      redirect_to items_path
    
    else
      render :edit
    end
  
      
  end

  private
  def item_params
    params.require(:item).permit(:name, :price)
  end
  
end
