class Api::Menu_itemsItemsController < ApplicationController
  def index
    render json: Menu_items.all
  end

  def create
    menu_items= Menu_items.new(menu_items_params)
    if menu_items.save
      render json: menu_items
    else
      render json: { errors: menu_items.errors }, status :unprocessable_entity
    end
  end

  def update
    menu_items = Menu_items.find(params[:id])
    menu_items.update(complete: !menu_items.complete)
    render json: menu_items
  end

  def destroy
    Menu_items.find(params[:id]).destroy
    render json: { message: 'Menu_items Deleted' }
  end

  private
    def menu_items_params
      params.require(:item).permit(:name)
    end

end
