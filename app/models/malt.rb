class Malt < ApplicationRecord
  has_many :recipe_malts

  validates :name, presence: true
end
