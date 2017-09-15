class Genre < ApplicationRecord
  validates :name, presence: true, length: { minimum: 1, maximum: 40 }
  validates :description, presence: true, length: { minimum: 1, maximum: 400 }
  has_many :subgenres, dependent: :destroy
end
