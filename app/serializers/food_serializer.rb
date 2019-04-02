class FoodSerializer < ActiveModel::Serializer
  attributes [
    :id, :name, :variety, :ss_amt_wt_t, :ss_unit_wt_t, :ss_amt_vol_t, :ss_unit_vol_t,
    :beans_t, :berries_t, :other_fruits_t, :cruciferous_vegetables_t, :greens_t,
    :other_vegetables_t, :flaxseeds_t, :nuts_t, :turmeric_t, :whole_grains_t, :other_seeds_t,
    :cals_t, :fat_t, :carbs_t, :protein_t
  ]
end
