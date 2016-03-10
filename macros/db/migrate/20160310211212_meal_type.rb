class MealType < ActiveRecord::Migration
  def up
  	rename_column("meals", "type", "mealtype")
  end

  def down
  	rename_column("meals", "mealtype", "type")
  end
end
