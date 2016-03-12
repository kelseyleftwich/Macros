class AddIngredientWeight < ActiveRecord::Migration
  def change
  	add_column("ingredients", "grams", :decimal)
  	add_column("ingredients", "ounces", :decimal)
  end
end
