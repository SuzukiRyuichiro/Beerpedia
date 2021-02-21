class Hop < ApplicationRecord
  has_many :recipe_hops
  has_many :recipes, through: :recipe_hops
  has_many :beers, through: :recipes

  validates :name, presence: true
  validates :name, uniqueness: true
end
