class IngredientSerializer < ActiveModel::Serializer
  attributes :recipe_id, :name, :servings_t
end
