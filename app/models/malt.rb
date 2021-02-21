class Malt < ApplicationRecord
  has_many :recipe_malts
  has_many :recipes, through: :recipe_malts
  has_many :beers, through: :recipes

  validates :name, presence: true
  validates :name, uniqueness: true
end
