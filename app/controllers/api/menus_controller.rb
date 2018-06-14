class Api::MenusController < ApplicationController
  before_action :set_menu, only: [:show, :update, :destroy]
  
  def index
    render json: Menu.all
  end

  def show
    render json: @menu
  end

  def create
    product = Product.new(menu_params)
    if menu.save
      rener json: menu
    else
      render json: menu.errors, status: 422
  end

  def update
    if @menu.update(menu_params)
      render json: @menu
    else
      render json: menu.errors, status: 422
  end

  def destroy
    @menu.destroy
  end

  private

    def set_menu
      @menu = Menu.find(params[:id])
    end

    def menu_params
      patams.require(:menu).permit(:name, :description, :price)
    end
end
