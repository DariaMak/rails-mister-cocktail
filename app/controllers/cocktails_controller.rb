class CocktailsController < ApplicationController
  before_action :set_cocktail, only: [:show, :destroy]

  def index
    @cocktails = Cocktail.all
  end

  def new
    @cocktail = Cocktail.new
    rederect_to
  end

  def show
    @dose = Dose.new
  end

  def create
    @cocktail = Cocktail.new(params[:cocktail])
    @cocktail.save
    redirect_to cocktail_path(@cocktail)
  end

  def destroy
    @cocktail.destroy
    redirect_to cocktail_path(@cocktail)
  end

  def set_cocktail
    @cocktail = Cocktail.find(params[:id])
  end
end
