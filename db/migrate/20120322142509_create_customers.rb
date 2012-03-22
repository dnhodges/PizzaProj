class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :email,           :null => false
      t.string :password_digest, :null => false
      t.string :first_name,      :null => false
      t.string :last_name,       :null => false
      t.string :phone,           :null => false
      t.string :address,         :null => false
      t.decimal :amt_spent, precision: 8, scale: 2, :null => false, :default => 0

      t.timestamps
    end
  end
end
