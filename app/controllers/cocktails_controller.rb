class CocktailsController < ApplicationController
  def home
  end
  def index
    @cocktails = Cocktail.all
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    @cocktail.save
    if @cocktail.save
      redirect_to @cocktail # , notice: 'Cocktail was successfully created.'
    else
      render :new
    end
  end

  def update
    @cocktail = Cocktail.find(params[:id])
    redirect_to cocktail_path(@cocktail) if @cocktail.photos.attach(cocktail_params[:photos])
  end

  def show
    @cocktail = Cocktail.find(params[:id])
    @dose = Dose.new
  end

  private

  def cocktail_params
    params.require(:cocktail).permit(:name, :doses, photos: [])
  end
end
