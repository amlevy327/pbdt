class AddNutritionToFood < ActiveRecord::Migration[5.2]
  def change

    add_column :foods, :beans_t, :decimal
    add_column :foods, :berries_t, :decimal
    add_column :foods, :other_fruits_t, :decimal
    add_column :foods, :cruciferous_vegetables_t, :decimal
    add_column :foods, :greens_t, :decimal
    add_column :foods, :other_vegetables_t, :decimal
    add_column :foods, :flaxseeds_t, :decimal
    add_column :foods, :nuts_t, :decimal
    add_column :foods, :turmeric_t, :decimal
    add_column :foods, :whole_grains_t, :decimal
    add_column :foods, :other_seeds_t, :decimal
    
    add_column :foods, :cals_t, :decimal
    add_column :foods, :fat_t, :decimal
    add_column :foods, :carbs_t, :decimal
    add_column :foods, :protein_t, :decimal
  end
end
