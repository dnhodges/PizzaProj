class CreateIncludesDrinkOrderJoinTable < ActiveRecord::Migration
  def up
  	create_table :includes_drinks_orders, :id => false do |t|
  		t.integer :includes_drink_id
  		t.integer :order_id
  	end
  end

  def down
  	drop_table :includes_drinks_orders
  end
end
