class Beer < ApplicationRecord
  belongs_to :brewery
  has_one :recipe
  has_many :recipe_hops, through: :recipe
  has_many :hops, through: :recipe_hops
  has_many :recipe_malts, through: :recipe
  has_many :malts, through: :recipe_malts

  validates :name, presence: true
  validates :imageURL, presence: true
  validates :imageURL, format: {with: /(http:\/\/www\.|https:\/\/www\.|http:\/\/|https:\/\/)?[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(:[0-9]{1,5})?(\/.*)?/i, message: "Please type a valid URL" }
  validates_numericality_of :abv, less_than_or_equal_to: 30.0
  validates_numericality_of :abv, greater_than_or_equal_to: 0.0
end
