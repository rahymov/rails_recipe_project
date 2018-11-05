class RecipCategory < ApplicationRecord
  has_many :recipe_categories
  has_many :categories, through: :recipe_categories
end
