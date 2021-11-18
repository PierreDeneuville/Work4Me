class Message < ApplicationRecord
  belongs_to :user
  belongs_to :demande
  validates :demande, presence: true
  validates :user, presence: true
  validates :content, presence: true
end
