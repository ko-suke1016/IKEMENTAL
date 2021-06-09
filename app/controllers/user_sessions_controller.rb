class UserSessionsController < ApplicationController
    skip_before_action :require_login, only: [:new, :create, :destroy], raise: false
    def new
    end

    def create
        @user = login(params[:email], params[:password])
        if @user
            flash[:success] = 'ログインに成功しました'
            redirect_to users_path
        else
            flash[:warning] = 'ログインに失敗しました'
            render :new
        end
    end

    def destroy
        logout
        redirect_to root_path
        flash[:success] = 'ログアウトしました'
    end
end
