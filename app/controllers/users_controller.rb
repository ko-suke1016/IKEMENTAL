class UsersController < ApplicationController
    def index
        # ユーザー情報の取得
        @user = User.find(current_user.id)

        # 一問一答問題の質問と答え
        @third_question = ThirdQuestion.order("RAND()").first
        @third_answers = ThirdAnswer.where(third_question_id: @third_question)

        #回答結果保存モデルへのインスタンス取得ないし初期化
        @total = QuestionResult.find_by(user_id: current_user.id, question_type: 2)
        if @total == nil
            @total = QuestionResult.new(user_id: current_user.id, question_type: 2)
        end
        @total.save

        # physical_gageの値取得
        @user_physical_gage = User.where(id: current_user.id).pluck(:physical_gage)
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
