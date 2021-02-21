class Brewery < ApplicationRecord
  has_many :beers

  validates :name, presence: true
  validates :name, uniqueness: true
end
