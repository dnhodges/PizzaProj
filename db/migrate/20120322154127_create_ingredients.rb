class CreateIngredients < ActiveRecord::Migration
  def change
    create_table :ingredients do |t|
      t.string :ingred_name, :null => false, :limit => 15
      t.string :description, :null => false, :limit => 50
      t.decimal :price,		 :null => false, :default => 0

      t.timestamps
    end
  end
end
