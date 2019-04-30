class AddVarietyToIngredients < ActiveRecord::Migration[5.2]
  def change
    add_column :ingredients, :variety, :string
  end
end
