class Ingredient < ApplicationRecord
  belongs_to :recipe
  delegate :user, :to => :recipe, :allow_nil => true
end
