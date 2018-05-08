class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def index
    return "Hello, world"
  end
end
