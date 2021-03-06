class CreatePreferences < ActiveRecord::Migration
  def change
    create_table :preferences do |t|
      t.integer :quantity, :null => false, :default => 1
      t.string 	:size,	   :null => false
      t.string 	:crust,	   :null => false
      t.decimal :price,	precision: 8, scale: 2, :null => false, :default => 0

      t.timestamps
    end
  end
end
