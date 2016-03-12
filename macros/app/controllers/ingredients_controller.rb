class IngredientsController < ApplicationController

  def index
    @ingredients = Ingredient.all
  end

  def show
    @ingredient = Ingredient.find(params[:id])
  end

  def new
    @ingredient = Ingredient.new
  end

  def create
    # Instantiate a new object using form params
    @ingredient = Ingredient.new(ingredient_params)
    if @ingredient.save
      # if successful
      flash[:notice] = "Ingredient saved successfully."
      redirect_to(:action => 'index')
    else
      render('new')
    end
  end

  def edit
    @ingredient = Ingredient.find(params[:id])
  end

  def update
    @ingredient = Ingredient.find(params[:id])
  end

  def delete
    @ingredient = Ingredient.find(params[:id])
  end

  def destroy
    @ingredient = Ingredient.find(params[:id])
  end

  private
  def ingredient_params
    params.require(:ingredient).permit(:name, :ounces, :grams, :carbs, :protein, :fat)
  end
end
