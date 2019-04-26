class AddDefaultsToUsers < ActiveRecord::Migration[5.2]
  def change
    change_column_default(:users, :beans_g, 3)
    change_column_default(:users, :berries_g, 1)
    change_column_default(:users, :other_fruits_g, 3)
    change_column_default(:users, :cruciferous_vegetables_g, 1)
    change_column_default(:users, :greens_g, 2)
    change_column_default(:users, :other_vegetables_g, 2)
    change_column_default(:users, :flaxseeds_g, 1)
    change_column_default(:users, :nuts_g, 1)
    change_column_default(:users, :turmeric_g, 1)
    change_column_default(:users, :whole_grains_g, 3)
    change_column_default(:users, :other_seeds_g, 1)
    change_column_default(:users, :cals_g, 2000)
    change_column_default(:users, :fat_g, 78)
    change_column_default(:users, :carbs_g, 250)
    change_column_default(:users, :protein_g, 75)
  end
end
