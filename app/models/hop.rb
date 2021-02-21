class Hop  < ApplicationRecord
  has_many :recipe_hops

  validates :name, presence: true
  validates :name, uniqueness: true
end
