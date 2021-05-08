class UsersController < ApplicationController
    def index
        @user = User.find(current_user.id)
        @third_question = ThirdQuestion.order("RAND()").first
        @third_answers = ThirdAnswer.where(third_question_id: @third_question)

        @total = QuestionResult.find_by(user_id: current_user.id, question_type: 2)
        if @total == nil
            @total = QuestionResult.new(user_id: current_user.id, question_type: 2)
        end
        @total.save
    end

    def new
        @user = User.new
    end

    def create
        @user = User.create(user_params)
        if @user.save
            flash[:success] = 'ユーザー登録が完了しました'
            redirect_to login_path
        else
            flash[:warning] = 'ユーザー登録に失敗しました'
            render :new
        end
    end

    def update
    end

    def destroy
    end

    private

    def user_params
        params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
end
