class DosesController < ApplicationController
  def new
    @dose = Dose.new
  end

  def create
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new(dose_params)
    @dose.cocktail = @cocktail
    @dose.save
    redirect_to cocktail_path(@cocktail)
  end

  def destroy
    @dose = Dose.find(params[:id])
    c = @dose.cocktail
    @dose.destroy
    redirect_to cocktail_path(c)
  end

  def dose_params
    params.require(:dose).permit(:description, :ingredient_id)
  end
end
