class DosesController < ApplicationController
  def new

    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new
  end

  def create
    ingredient = Ingredient.new(name: params[:dose][:ingredient])
    ingredient.save
    dose = Dose.new(amount: params[:dose][:amount], ingredient_id: ingredient.id, cocktail_id: params[:cocktail_id], description: params[:dose][:description])
    if dose.save
      redirect_to cocktail_path(params[:cocktail_id])
    else
      render :new
    end
  end
  def show

  end

  def destroy
    dose = Dose.find_by_ingredient_id(params[:cocktail_id])
    dose.destroy
    redirect_to cocktails_path


  end
end
 # "dose"=>{"amount"=>"1", "description"=>"sss", "ingredient"=>"ddd"},
 # "cocktail_id"=>"1"}
# t.string "amount"
#     t.bigint "ingredient_id"
#     t.bigint "cocktail_id"
