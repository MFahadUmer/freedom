class Opinion < ApplicationRecord
  belongs_to :user, foreign_key: 'author_id'
  has_many :likes
  scope :ordered_by_created_at, -> { order(created_at: :desc) }
  validates :opinion, presence: true, length: { minimum: 10 }
end
