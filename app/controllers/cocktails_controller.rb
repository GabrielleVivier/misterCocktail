class CocktailsController < ApplicationController

  def index
    @cocktails = Cocktail.all
  end

  def show
    @cocktail = Cocktail.find(params[:id])
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.create(cocktail_params)
    redirect_to cocktail_path(@cocktail)
  end

  def edit
    @cocktail = Cocktail.find(params[:id])
  end

  def update
    @cocktail = Cocktail.find(params[:id])
    @cocktail.update(cocktail_params)
    flash[:notice] = "The " + @cocktail.name+ " was successfully updated!"
    redirect_to cocktail_path(@cocktail)
  end

  def destroy
    @cocktail = Cocktail.find(params[:id])
    @cocktail.destroy
    flash[:notice] = "The #{@cocktail.name} was successfully deleted!"
    redirect_to cocktails_path
  end

  private
  def cocktail_params
    params.require(:cocktail).permit(:name, :description)
  end

end
