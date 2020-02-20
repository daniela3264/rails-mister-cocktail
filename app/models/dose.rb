class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient
  validates :description, presence:true
  validates :ingredient, uniqueness: { scope: :cocktail,
    message: "An ingredient should only be included once per cocktail" }
end
