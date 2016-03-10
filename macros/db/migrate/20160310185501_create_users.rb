class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
    	t.string "first_name", :limit => 25
    	t.string "last_name", :limit => 50
    	t.string "email", :limit => 100
    	t.string "password", :limit => 40

     	t.timestamps null: false
    end
  end
end
