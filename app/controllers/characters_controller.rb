class CharactersController < ApplicationController
  def index
    @characters = Character.all
  end

  def new
    @character = Character.new
  end

  def create
    @character = Character.new(character_params)
    if @character.save
      redirect_to root_path
    else
      flash[:errors] = "Invalid fields"
      render :new
    end
  end

  def show
    @character = Character.find(params[:id])
  end

  def destroy
    @character = Character.find(params[:id])
    @character.destroy
    redirect_to root_path
  end

  private

  def character_params
    params.require(:character).permit(:name, :race, :character_class, :gender)
  end
end
