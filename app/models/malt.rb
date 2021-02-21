class Malt < ApplicationRecord
  has_many :recipe_malts

  validates :name, presence: true
  validates :name, uniqueness: true
end
