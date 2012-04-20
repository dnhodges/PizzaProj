class CreateIncludesDrinkPreferenceJoinTable < ActiveRecord::Migration
  def up
  	create_table :includes_drinks_preferences, :id => false do |t|
  		t.integer :includes_drink_id
  		t.integer :preference_id
  	end
  end

  def down
  	drop_table :includes_drinks_preferences
  end
end
