class UsersController < ApplicationController
    before_action  :require_login, only: [:index, :level_up, :less_mental, :show, :update]

    def index
        # ユーザー情報の取得
        @user = current_user

        # physical_gageの値取得
        @user_physical_gage = User.where(id: current_user.id).pluck(:physical_gage)
        # experience_gageの値取得
        @user_experience_gage = User.where(id: current_user.id).pluck(:experience_gage)

        # 基礎問題の問題と回答の抽出
        @first_question = FirstQuestion.all.includes(:first_answers)
        # 応用の問題の抽出
        @second_question = SecondQuestion.all.includes(:second_answers)
        # 実践問題の抽出
        @third_question = ThirdQuestion.all.includes(:third_answers)
        # recovery_question & recovery_answerの取得
        @recovery_question = RecoveryQuestion.where( 'id >= ?', rand(RecoveryQuestion.first.id..RecoveryQuestion.last.id) ).first
        @recovery_answers = RecoveryAnswer.where(recovery_question_id: @recovery_question)
    end

    def new
        return redirect_to tops_path, warning: 'レッスンはPC専用です。' if request.from_smartphone?
        @user = User.new
    end

    def show
        @user = User.find(params[:id])
    end

    def update
        @user = User.find(params[:id])
        if @user.update_attributes(user_params)
            flash[:success] = 'ユーザー情報を更新しました'
            redirect_to users_path
        else
            flash[:error] = '更新に失敗しました'
            render :show
        end
    end

    def create
        @user = User.new(user_params)
        if @user.save
            auto_login(@user)
            flash[:success] = 'ユーザー登録が完了しました'
            redirect_to users_path
        else
            flash[:warning] = 'ユーザー登録に失敗しました'
            render :new
        end
    end

    # userの役職が上がった際モーダルを表示
    def level_up
        @user = User.find_by(id: current_user)
        respond_to do |format|
            format.js {render 'users/level_up.js.erb'}
        end
    end

    # userのメンタルゲージが一定以下になった段階で問題を解けなくするよう実装
    def less_mental
        @user = User.find_by(id: current_user)
        respond_to do |format|
            format.js {render 'users/less_mental.js.erb'}
        end
    end

    private

    def user_params
        params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
end
