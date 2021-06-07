class UserSessionsController < ApplicationController
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
end
