# rubocop:disable Layout/LineLength
module ApplicationHelper
  def like_or_dislike(opinion)
    like = opinion.liked_or_dislike(current_user.id)
    if like
      link_to "<i class='text-danger far fa-thumbs-down fa-2x'></i>".html_safe, like_path(opinion_id: opinion, id: current_user.id), method: :delete
    else
      link_to "<i class='text-success far fa-thumbs-up fa-2x'></i>".html_safe, likes_path(opinion_id: opinion), method: :post
    end
  end

  def image_check(user_image)
    if user_image.attached?
      link_to image_tag(user_image, class: 'w-100 h-100 rounded'), user_path(current_user)
    else
      link_to image_tag('https://www.gosoto.co/wp-content/uploads/2016/04/gravatar.jpg', class: 'w-100 h-100 rounded'), user_path(current_user)
    end
  end
end
# rubocop:enable Layout/LineLength
