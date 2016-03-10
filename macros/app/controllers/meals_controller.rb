class MealsController < ApplicationController
  def index
    @meals = Meal.all
  end

  def delete
  end

  def edit
  end

  def new
    @meal = Meal.new
  end

  def create
    #instantiate a new object using form params
    @meal = Meal.new(meal_params)
    # Save the object
    if @meal.save
      # If save succeeds, redirect to the index action
      flash[:notice] = "Meal created successfully."
      redirect_to(:action => 'index')
    else
      # If save fails, redisplay the form so user can fix problems
      render('new')
    end
  end

  def show
  end

  private
  def meal_params
    params.require(:meal).permit(:name, :mealtype)
  end
end
