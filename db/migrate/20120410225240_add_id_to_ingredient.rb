class AddIdToIngredient < ActiveRecord::Migration
  def change
    add_column :ingredients, :preference_id, :integer

  end
end
