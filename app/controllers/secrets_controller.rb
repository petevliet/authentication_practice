class SecretsController < ApplicationController
  before_action :authenticate

  def index
  end

  private
  def authenticate
    redirect to login_path unless current_user
  end

  def current_user

    if session[:user_id]
      @current_user ||= User.find(session[:user_id])
    end
  end

end
