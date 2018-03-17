class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :authenticate

  private

  def authenticate
    # BASIC認証
    authenticate_or_request_with_http_basic('Administration') do |name, password|
      name == ENV['BASIC_USERNAME'] && password == ENV['BASIC_PASSWORD']
    end
  end
end
