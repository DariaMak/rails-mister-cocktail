class Ingredient < ApplicationRecord
  has_many :doses
  has_many :cocklails, through: :doses
end
