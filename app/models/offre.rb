class Offre < ApplicationRecord
  belongs_to :user
  validates :métier, presence: true
  validates :prix, presence: true
  validates :prix, numericality: true

  include PgSearch::Model
  pg_search_scope :global_search,
    against: [ :métier, :description ],
    associated_against: {
      user: [ :name ]
    },
    using: {
      tsearch: { prefix: true }
    }
end
