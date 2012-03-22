class CreateIncludesDrinks < ActiveRecord::Migration
  def change
    create_table :includes_drinks do |t|
      t.string :drink_name,		:null => false
      t.string :manufacturer,	:null => false
      t.string :description,	:null => false
      t.decimal :price,	precision: 8, scale: 2, :default => 0

      t.timestamps
    end
  end
end
