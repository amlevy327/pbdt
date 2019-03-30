class AddNutritionToItems < ActiveRecord::Migration[5.2]
  def change

    add_column :items, :beans, :decimal
    add_column :items, :berries, :decimal
    add_column :items, :other_fruits, :decimal
    add_column :items, :cruciferous_vegetables, :decimal
    add_column :items, :greens, :decimal
    add_column :items, :other_vegetables, :decimal
    add_column :items, :flaxseeds, :decimal
    add_column :items, :nuts, :decimal
    add_column :items, :turmeric, :decimal
    add_column :items, :whole_grains, :decimal
    add_column :items, :other_seeds, :decimal
    
    add_column :items, :cals, :decimal
    add_column :items, :fat, :decimal
    add_column :items, :carbs, :decimal
    add_column :items, :protein, :decimal
  end
end
