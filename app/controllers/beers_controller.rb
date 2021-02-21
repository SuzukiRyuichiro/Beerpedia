class BeersController < ApplicationController

  def index
    @beers = Beer.all
  end

  def create
    @beer = Beer.new(beer_params)
    if @beer.save
      redirect_to beers_path
    else
      render :new
    end
  end

  def new
    @beer = Beer.new
    @breweries = Brewery.all
  end

  def show
    @beer = Beer.find(params[:id])
  end

  private

  def beer_params
    params.require(:beer).permit(:name, :abv, :brewery_id)
  end

end
