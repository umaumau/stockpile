class OptionsController < ApplicationController
  before_action :authenticate_user!
  before_action :find_option

  def edit
  end

  def update
    if @option.update(option_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  private

  def find_option
    @option = Option.find(params[:id])
  end

  def option_params
    params.require(:option).permit(:goal, :goal_day, :rate).merge(user_id: current_user.id)
  end

end