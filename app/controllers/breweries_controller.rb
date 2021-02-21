class BreweriesController < ApplicationController

  def index
    @breweries = Brewery.all
  end

  def create
    @brewery = Brewery.new(brewery_params)
    if @brewery.save
      redirect_to breweries_path
    else
      render :new
    end
  end

  def new
    @brewery = Brewery.new
  end

  def show
    @brewery = Brewery.find(params[:id])
  end

  private

  def brewery_params
    params.require(:brewery).permit(:name)
  end
end
