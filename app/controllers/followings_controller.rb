class FollowingsController < ApplicationController
  def create
    @following = current_user.followings.build(followed_id: params[:followed_id])
    puts "curehjsd #{current_user.id}"
    puts "curehjsd #{params[:followed_id]}"
    puts @following
    if @following.save
      flash[:notice] = 'Follow successfull'
    else
      flash[:alert] = 'Follow unsuccessfull'
    end
    redirect_to users_path
  end

  def destroy
    @following = current_user.followings.find_by(followed_id: params[:followed_id])
    if @following.destroy
      flash[:notice] = 'Unfollow successfull'
    else
      flash[:alert] = 'Unfollow unsuccessfull'
    end
    redirect_to users_path
  end

  private

  def following_params
    params.require(:followings).permit(:followed_id)
  end
end
