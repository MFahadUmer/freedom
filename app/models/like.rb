class Like < ApplicationRecord
  belongs_to :user
  belongs_to :opinion
  validates :user_id, presence: true
  validates :opinion_id, presence: true
end
