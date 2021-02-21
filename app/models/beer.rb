class Beer < ApplicationRecord
  belongs_to :brewery

  validates :name, presence: true
end
