# rubocop:disable Layout/LineLength
module UsersHelper
  def follower_links(current_user, user)
    return unless user.id != current_user.id

    if user.follower?(current_user, user.id)
      link_to "<i class='text-warning fas fa-minus-circle fa-2x'></i>".html_safe, following_path(followed_id: user.id), method: :delete
    else
      link_to "<i class='text-success fas fa-plus-circle fa-2x'></i>".html_safe, followings_path(followed_id: user.id), method: :post
    end
  end

  def follower_check
    @follow_user.map do |x|
      next unless x.id != current_user.id

      concat(content_tag(:div, class: 'user-followed-by-grid p-2') do
        concat(content_tag(:div, class: 'user-followed-by-image') do
          image_check(x.profile_image)
        end)
        concat(content_tag(:div, class: 'd-flex justify-content-between border-bottom align-items-center') do
          concat(content_tag(:h4, (link_to x.fullname, user_path(x.id))))
        end)
      end)
    end
  end
end
# rubocop:enable Layout/LineLength
