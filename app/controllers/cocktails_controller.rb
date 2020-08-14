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
    new_cocktail = Cocktail.new(cocktail_params)
    new_cocktail.save
  end

private

  def cocktail_params
    params.require(:cocktail).permit(:name)
  end
end
