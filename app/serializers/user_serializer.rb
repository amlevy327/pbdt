class UserSerializer < ActiveModel::Serializer
  attributes [
    :name, :email, :authentication_token,
    :beans_g, :berries_g, :other_fruits_g, :cruciferous_vegetables_g, :greens_g,
    :other_vegetables_g, :flaxseeds_g, :nuts_g, :turmeric_g, :whole_grains_g, :other_seeds_g,
    :cals_g, :fat_g, :carbs_g, :protein_g
  ]
   
  has_many :foods
end
