class TopsController < ApplicationController
    skip_before_action :require_login, only: [:index, :terms, :privacy, :play_role], raise: false
    def index; end

    def terms; end

    def privacy; end

end
