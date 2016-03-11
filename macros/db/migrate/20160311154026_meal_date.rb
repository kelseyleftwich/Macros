class MealDate < ActiveRecord::Migration
  def up
  	add_column("meals", "mealdate", :date)
  end

  def down
  	remove_column("meals", "mealdate")
  end
end
