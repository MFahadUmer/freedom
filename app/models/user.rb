class User < ApplicationRecord
  has_many :opinions, foreign_key: 'author_id'
  has_one_attached :profile_image
  has_one_attached :cover_image

  has_many :followings, foreign_key: 'user_id'
  has_many :following_user, through: :followings, source: :friend

  has_many :followers, class_name: 'Following', foreign_key: 'followed_id'
  has_many :follower_user, through: :followers, source: :user

  has_many :likes

  validates :fullname, presence: true, length: { minimum: 6, maximum: 50 }
  validates :username, presence: true, uniqueness: true, length: { minimum: 6, maximum: 50 }
  # validates :profile_image, attached: true
  # validates :profile_image, file_content_type: { allow: ['image/jpeg', 'image/png'] }
  # validates :cover_image, attached: true
  #
  # def correct_image_type
  #   if :profile_image.attached? && !profile_image.content_type.in?(%w(image/jpeg image/jpg image/png))
  #     errors.add(:profile_image, 'Must be JPEG or PNG')
  #   end
  # end

  def follower?(current_user, user)
    current_user.following_user.ids.include?(user)
  end
end
