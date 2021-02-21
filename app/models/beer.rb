class Beer < ApplicationRecord
  belongs_to :brewery
  has_one :recipe
  has_many :recipe_hops, through: :recipe
  has_many :hops, through: :recipe_hops
  has_many :recipe_malts, through: :recipes
  has_many :malts, through: :recipe_malts

  validates :name, presence: true
end
