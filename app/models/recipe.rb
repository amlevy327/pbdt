class Recipe < ApplicationRecord
  belongs_to :user, dependent: :destroy
  has_many :ingredients, dependent: :destroy
end
