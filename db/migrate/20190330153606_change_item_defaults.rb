class ChangeItemDefaults < ActiveRecord::Migration[5.2]
  def change

    change_column_default :items, :ss_amt_wt, 0
    change_column_default :items, :ss_amt_vol, 0

    change_column_default :items, :beans, 0
    change_column_default :items, :berries, 0
    change_column_default :items, :other_fruits, 0
    change_column_default :items, :cruciferous_vegetables, 0
    change_column_default :items, :greens, 0
    change_column_default :items, :other_vegetables, 0
    change_column_default :items, :flaxseeds, 0
    change_column_default :items, :nuts, 0
    change_column_default :items, :turmeric, 0
    change_column_default :items, :whole_grains, 0
    change_column_default :items, :other_seeds, 0
    
    change_column_default :items, :cals, 0
    change_column_default :items, :fat, 0
    change_column_default :items, :carbs, 0
    change_column_default :items, :protein, 0
  end
end
