class RecipeSerializer < ActiveModel::Serializer
  
  attributes [
    :id, :name, :servings,
    :beans, :berries, :other_fruits, :cruciferous_vegetables, :greens, :other_vegetables,
    :flaxseeds, :nuts, :turmeric, :whole_grains, :other_seeds,
    :cals, :fat, :carbs, :protein
  ]

  attribute('updated_at') { object.updated_at.iso8601(3).to_s }
  
  has_many :ingredients
end
