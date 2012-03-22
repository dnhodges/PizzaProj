class CreateIncludesDrinks < ActiveRecord::Migration
  def change
    create_table :includes_drinks do |t|
      t.string :drink_name,		:null => false, :limit => 15
      t.string :manufacturer,	:null => false, :limit => 15

      t.timestamps
    end
  end
end
