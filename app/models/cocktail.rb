class Cocktail < ApplicationRecord
  has_many :doses
  has_many :ingredients
end
