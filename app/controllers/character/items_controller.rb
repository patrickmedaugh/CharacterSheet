class Character::ItemsController < ApplicationController
  def new
    @item = Item.new
  end

  def create
    @item = Item.new(name: params[:item][:name], description: params[:item][:description])
    @item.character_id = params[:id]
    if @item.save
      redirect_to character_path(Character.find(params[:id]))
    else
      render :new
    end
  end

  private

  def item_params
    params.require(:item).permit(:name, :description)
  end
end
