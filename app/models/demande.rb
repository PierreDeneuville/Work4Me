class Demande < ApplicationRecord
  belongs_to :offre
  belongs_to :user
  has_many :messages
  validates :date_debut, presence: true
  validates :date_fin, presence: true
end
