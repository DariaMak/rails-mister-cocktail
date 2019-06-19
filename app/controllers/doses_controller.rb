class DosesController < ApplicationController
  def new
    @dose = Dose.new
  end

  def create
    @dose = Dose.new(params[:dose])
    @dose.save
  end

  def destroy
    @coctail = Cocktail.find(params[:cocktail])
    @dose = Dose.find(@cocktail)
    @dose.destroy
  end
end
