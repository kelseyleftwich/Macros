class CreateMeals < ActiveRecord::Migration
  def change
    create_table :meals do |t|
    	t.string "name", :limit => 25
    	t.string "type", :default => "Snack", :null => false

      t.timestamps null: false
    end
  end
end
