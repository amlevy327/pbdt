class UserSerializer < ActiveModel::Serializer
  
  attributes [
    :id, :name, :email, :authentication_token, :email_verification_token, :email_verified,
    :beans_g, :berries_g, :other_fruits_g, :cruciferous_vegetables_g, :greens_g,
    :other_vegetables_g, :flaxseeds_g, :nuts_g, :turmeric_g, :whole_grains_g, :other_seeds_g,
    :cals_g, :fat_g, :carbs_g, :protein_g
  ]
   
  has_many :foods
  has_many :recipes
  has_many :ingredients
end
