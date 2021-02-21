class RecipeMalt < ApplicationRecord
  belongs_to :recipe
  belongs_to :malt
end
