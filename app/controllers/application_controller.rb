class ApplicationController < ActionController::Base
  before_action :set_user
  protect_from_forgery with: :exception

  def set_user
    User.current = current_user
  end
end
