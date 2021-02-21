class Brewery < ApplicationRecord
  has_many :beers

  validates :name, presence: true
  validates :imageURL, presence: true
  validates :name, uniqueness: true
  validates :imageURL, format: { with: /(http:\/\/www\.|https:\/\/www\.|http:\/\/|https:\/\/)?[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(:[0-9]{1,5})?(\/.*)?/i, message: "Please type a valid URL" }
end
