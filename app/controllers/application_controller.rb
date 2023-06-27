class ApplicationController < ActionController::Base
  before_action :basic_auth
  before_action :create_option, if: :devise_controller?
  before_action :left_days

  private

  def basic_auth
    authenticate_or_request_with_http_basic do |username, password|
      username == ENV["BASIC_AUTH_USER"] && password == ENV["BASIC_AUTH_PASSWORD"]
    end
  end

  def create_option
    if user_signed_in? && current_user.option.nil?
      Option.create
    end
  end

  def left_days
    if user_signed_in? && current_user.option.limit.present?
      limit = current_user.option.limit
      today = Date.today
      @days = (limit - today).to_i
    end
  end
  
end
