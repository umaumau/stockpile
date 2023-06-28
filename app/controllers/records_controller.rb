class RecordsController < ApplicationController
  before_action :authenticate_user!

  def index
    price_sum_calculation
    @record = Record.new
  end

  def create
    @record = Record.new(record_params)
    if @record.valid?
      if params[:form_type] == "がんばった！の記録をする"
        @record.save
      else
        @record.price = -@record.price
        @record.save
      end
      redirect_to action: :index
    else
      price_sum_calculation
      render :index
    end
  end

  private

  def price_sum_calculation
    time_minute_sum = current_user.records.sum(:time_minute) * current_user.option.rate
    @price_sum = current_user.records.sum(:price) + time_minute_sum
  end

  def record_params
    params.require(:record).permit(:content, :price, :time_minute).merge(user_id: current_user.id)
  end
end
