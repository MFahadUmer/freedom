class UsersController < ApplicationController
  before_action :authenticate, only: %i[index show]
  def index
    @users = User.all
    @opinions = Opinion.all
    @follow_user = @users.where(id: (@users.ids - current_user.following_user.ids)).order(created_at: :desc)
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to users_path
    else
      render 'new'
    end
  end

  def edit
    @user = User.find(current_user.id)
  end

  def update
    @user = User.find(current_user.id)
    @user.update(user_params)
    if @user.save
      flash[:notice] = 'Profile Update'
    else
      flash[:alert] = 'Profile not updated'
    end
    redirect_to users_path
  end

  def follow
    req = current_user.followings.build(follower_id: params[:user_id])

    if req.save
      flash.notice = "You have followed #{User.find(params[:user_id]).name}"
      redirect_to root_path
    else
      flash.alert = 'follow not successful!'
      redirect_to users_path
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :fullname, :profile_image, :cover_image)
  end
end
# Student.all - Student.find(ClassSession.pluck(:student_id))
