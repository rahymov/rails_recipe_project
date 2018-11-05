class Recipe < ApplicationRecord
  belongs_to :user
  validates :name, :description, presence: true, uniqueness: true
end
