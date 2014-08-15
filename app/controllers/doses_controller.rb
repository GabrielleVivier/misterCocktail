class DosesController < ApplicationController

  def create
    @cocktail = Cocktail.find(params[:cocktail_id])
    @doses = @cocktail.doses.create(dose_params)
    redirect_to cocktail_path(@cocktail)
  end

  def new
    @dose = Dose.new
  end

  def edit
    @dose = Dose.find(params[:id])
  end

  def update
    @dose = Dose.find(params[:id])
    @cocktail = Cocktail.find(@dose.cocktail_id)
    @dose.update(dose_params)
    flash[:notice] = "The " + @cocktail.name + " was successfully updated!"
    redirect_to cocktail_path(@cocktail)
  end

  def destroy
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.find(params[:id])
    @dose.destroy
    flash[:notice] = "The dose was successfully deleted!"
    redirect_to cocktail_path(@cocktail)
  end

  private
  def dose_params
    params.require(:dose).permit(:amount, :ingredient_id, :cocktail_id)
  end
end
