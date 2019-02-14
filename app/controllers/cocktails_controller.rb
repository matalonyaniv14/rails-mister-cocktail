class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.all
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    cocktail = Cocktail.new(cocktail_params)
    if cocktail.save
      redirect_to cocktails_path
    else
      render :new
    end
  end

  def show
  @doses = Dose.where(cocktail_id: params[:id])

  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def cocktail_params
    params.require(:cocktail).permit(:name)
  end
end
