class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  # TODO: pundit; if possible OAuth
end
