class CalendarsController < ApplicationController
  def index
  end

  def show
    @record = Record.find(params[:id])
    if @record.price.present?
      @record.price = - @record.price
    end
  end
end
