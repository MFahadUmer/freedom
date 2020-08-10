class SessionsController < ApplicationController
  def new
    @session = User.new
  end

  def create
    @user = User.find_by(session_params)
    if @user
      session[:user_id] = @user.id
      flash[:notice] = 'Welcome to Freedom!!!!'
      redirect_to users_path
    else
      flash[:alert] = 'Username not found. Try again.'
      redirect_to new_session_path
    end
  end

  def destroy
    reset_session
    redirect_to new_session_path
  end

  private

  def session_params
    params.permit(:username)
  end
end
