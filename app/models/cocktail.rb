class Cocktail < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  has_many :doses, dependent: :destroy
  has_many :ingredients, dependent: :destroy, through: :doses
  has_attachment :photo
end
