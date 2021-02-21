class Recipe < ApplicationRecord
  belongs_to :beer
  has_many :recipe_hops
  has_many :recipe_malts
  has_many :hops, through: :recipe_hops
  has_many :malts, through: :recipe_malts
end
