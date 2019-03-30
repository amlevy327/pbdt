class ItemSerializer < ActiveModel::Serializer
  attributes [
    :id, :name, :variety, :ss_amt_wt, :ss_unit_wt, :ss_amt_vol, :ss_unit_vol,
    :beans, :berries, :other_fruits, :cruciferous_vegetables, :greens, :other_vegetables,
    :flaxseeds, :nuts, :turmeric, :whole_grains, :other_seeds,
    :cals, :fat, :carbs, :protein
  ]
end
