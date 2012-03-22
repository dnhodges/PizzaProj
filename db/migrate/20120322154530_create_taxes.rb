class CreateTaxes < ActiveRecord::Migration
  def change
    create_table :taxes do |t|
      t.string :state,		:null => false, :limit => 2
      t.string :tax_name,	:null => false, :limit => 1
      t.decimal :amount,	:null => false, :default => 0

      t.timestamps
    end
  end
end
