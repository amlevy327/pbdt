class AddNutritionGoalsToUsers < ActiveRecord::Migration[5.2]
  def change
    
    add_column :users, :beans_g, :decimal, default: 0
    add_column :users, :berries_g, :decimal, default: 0
    add_column :users, :other_fruits_g, :decimal, default: 0
    add_column :users, :cruciferous_vegetables_g, :decimal, default: 0
    add_column :users, :greens_g, :decimal, default: 0
    add_column :users, :other_vegetables_g, :decimal, default: 0
    add_column :users, :flaxseeds_g, :decimal, default: 0
    add_column :users, :nuts_g, :decimal, default: 0
    add_column :users, :turmeric_g, :decimal, default: 0
    add_column :users, :whole_grains_g, :decimal, default: 0
    add_column :users, :other_seeds_g, :decimal, default: 0
    
    add_column :users, :cals_g, :decimal, default: 0
    add_column :users, :fat_g, :decimal, default: 0
    add_column :users, :carbs_g, :decimal, default: 0
    add_column :users, :protein_g, :decimal, default: 0
  end
end
