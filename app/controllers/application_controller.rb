class ApplicationController < ActionController::Base
    helper_method :current_user
    protect_from_forgery with: :null_session
end
