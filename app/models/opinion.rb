class Opinion < ApplicationRecord
  belongs_to :user, foreign_key: 'author_id'
  has_many :likes
  scope :ordered_by_created_at, -> { order(created_at: :desc) }
  validates :opinion, presence: true, length: { minimum: 10 }

  def liked_or_dislike(user_id)
    likes.where(user_id: user_id).present?
  end
end
