class Offre < ApplicationRecord
  belongs_to :user
  validates :métier, presence: true
  validates :prix, presence: true
  validate :prix, numericality: true
end
