class Api::MenusController < ApplicationController
  def index
    render json: Menu.all
  end

  def create
    menu= Menu.new(menu_params)
    if menu.save
      render json: menu
    else
      render json: { errors: menu.errors }, status :unprocessable_entity
    end
  end

  def update
    menu = Menu.find(params[:id])
    menu.update(complete: !menu.complete)
    render json: menu
  end

  def destroy
    Menu.find(params[:id]).destroy
    render json: { message: 'Menu Deleted' }
  end

  private
    def menu_params
      params.require(:item).permit(:name)
    end

end
