class CreateIngredients < ActiveRecord::Migration
  def change
    create_table :ingredients do |t|
      t.string :ingred_name, :null => false
      t.string :description, :null => false 
      t.decimal :price,		 :null => false, :default => 0

      t.timestamps
    end
  end
end
