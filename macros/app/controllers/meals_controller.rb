class MealsController < ApplicationController
  def index
    @meals = Meal.all
  end

  def delete
    @meal = Meal.find(params[:id])
  end

  def destroy
    # Find an existing object using forms params
    @meal = Meal.find(params[:id])
    # Delete the object
    @meal.destroy
    flash[:notice] = "Subject deleted successfully."
    redirect_to(:action => 'index')
  end

  def edit
    @meal = Meal.find(params[:id])
  end

  def update
    # Find an existing object using forms params
    @meal = Meal.find(params[:id])
    # Update the object
    if @meal.update_attributes(meal_params)
      # If update succeeds, redirect to the index action
      flash[:notice] = "Meal updated successfully."
      redirect_to(:action => 'show', :id => @meal.id)
    else
      # If update fails, redisplay the form so user can fix problems
      @meal.name = "Something else"
      render('edit')
    end
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
    @meal = Meal.find(params[:id])
  end

  private
  def meal_params
    params.require(:meal).permit(:name, :mealtype, :mealdate)
  end
end
