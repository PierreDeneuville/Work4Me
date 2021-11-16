class Offre < ApplicationRecord
  belongs_to :user
  validates :métier, presence: true
  validates :prix, presence: true
  validates :prix, numericality: true
end
