class OptionsController < ApplicationController
  before_action :authenticate_user!
  before_action :find_option

  def edit
  end

  def update
    if @option.update(option_params)
      redirect_to action: :edit
    else
      render :edit
    end
  end

  private

  def find_option
    @option = Option.find(params[:id])
  end

  def option_params
    params.require(:option).permit(:goal, :limit, :rate).merge(user_id: current_user.id)
  end

end