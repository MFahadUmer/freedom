class OpinionsController < ApplicationController
  before_action :authenticate
  def create
    @opinion = current_user.opinions.build(opinion_params)
    if @opinion.save
      flash[:notice] = 'Your opinion has been posted.'
    else
      flash[:alert] = 'Your opinion can not be empty or less than 10 characters.'
    end
    redirect_to users_path
  end

  private

  def opinion_params
    params.permit(:opinion)
  end
end
