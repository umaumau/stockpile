class RecordsController < ApplicationController
  
  def index
    time_minute_sum = current_user.records.sum(:time_minute) * 10
    @price_sum = current_user.records.sum(:price) + time_minute_sum
    @record = Record.new
  end

  def create
    @record = Record.new(record_params)
    if params[:form_type] == "がんばった！の記録をする"
      @record.save
    else
      @record.price = -@record.price
      @record.save
    end
    redirect_to action: :index
  end

  private

  def record_params
    params.require(:record).permit(:content, :price, :time_minute).merge(user_id: current_user.id)
  end
end
