class ApplicationController < ActionController::Base
  before_action :basic_auth
  before_action :create_option
  before_action :left_days

  private

  def basic_auth
    authenticate_or_request_with_http_basic do |username, password|
      username == ENV["BASIC_AUTH_USER"] && password == ENV["BASIC_AUTH_PASSWORD"]
    end
  end

  def create_option
    if user_signed_in? && current_user.option.nil?
      current_user.build_option
      current_user.option.save
    end
  end

  def left_days
    if user_signed_in? && current_user.option.goal_day.present?
      goal_day = current_user.option.goal_day
      today = Date.today
      @days = (goal_day - today).to_i
    end
  end
  
end
