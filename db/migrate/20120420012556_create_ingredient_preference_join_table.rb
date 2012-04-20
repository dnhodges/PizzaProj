class CreateIngredientPreferenceJoinTable < ActiveRecord::Migration
  def up
  	create_table :ingredients_preferences, :id=>false do |t|
  		t.integer :ingredient_id
  		t.integer :preference_id
  	end
  end

  def down
  	drop_table :ingredients_preferences
  end
end
