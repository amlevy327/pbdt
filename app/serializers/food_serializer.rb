class FoodSerializer < ActiveModel::Serializer
  attributes [
    :id,
    :name, 
    :variety
  ]
end
