class Ingredient < ActiveRecord::Migration
	def change
		create_table :ingredients do |t|
			t.string "name", :limit => 25
			t.integer "carbs", :default => 0
			t.integer "fat", :default => 0
			t.integer "protein", :default => 0

			t.timestamps null: false
		end
	end
end
