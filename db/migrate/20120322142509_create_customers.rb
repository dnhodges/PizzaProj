class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :email,           :null => false, :limit => 50
      t.string :password_digest, :null => false, :limit => 50
      t.string :first_name,      :null => false, :limit => 15
      t.string :last_name,       :null => false, :limit => 20
      t.string :phone,           :null => false, :limit => 10
      t.string :address,         :null => false, :limit => 75
      t.decimal :amt_spent, precision: 8, scale: 2, :null => false, :default => 0

      t.timestamps
    end
  end
end
