class CreateTaxes < ActiveRecord::Migration
  def change

    create_table :taxes do |t|
      t.string :state,		:null => false
      t.string :tax_name,	:null => false
      t.decimal :amount,	:null => false

      t.timestamps
    end
  end
end
