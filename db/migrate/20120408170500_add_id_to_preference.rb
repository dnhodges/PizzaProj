class AddIdToPreference < ActiveRecord::Migration
  def change
    add_column :preferences, :order_id, :integer

  end
end
