class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.datetime :order_time, :default => Time.now, :null => false 
      t.decimal :price, precision: 8, scale: 2, 	:null => false
      t.boolean :delivered, :default => false, 		:null => false

      t.timestamps
    end
  end
end
