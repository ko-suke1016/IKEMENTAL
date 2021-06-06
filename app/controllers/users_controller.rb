class UsersController < ApplicationController
    def index
        # ユーザー情報の取得
        @user = User.find_by(id: current_user)

        # physical_gageの値取得
        @user_physical_gage = User.where(id: current_user.id).pluck(:physical_gage)
        # experience_gageの値取得
        @user_experience_gage = User.where(id: current_user.id).pluck(:experience_gage)

        @total = QuestionResult.find_by(user_id: current_user.id, question_type: 0)
        if @total == nil
            @total = QuestionResult.new(user_id: current_user.id, question_type: 0)
        elsif @total.total == nil
            @total.total = 0
        elsif @total.total != 0
            @total.total = 0
        end
        @total.save

        # 基礎問題の問題と回答の抽出
        @first_question = FirstQuestion.all
        @first_answers = FirstAnswer.all

        # 応用の問題の抽出
        @second_question = SecondQuestion.all
        @second_answers = SecondAnswer.all

        # recovery_question & recovery_answerの取得
        @recovery_question = RecoveryQuestion.where( 'id >= ?', rand(RecoveryQuestion.first.id..RecoveryQuestion.last.id) ).first
        @recovery_answers = RecoveryAnswer.where(recovery_question_id: @recovery_question)
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
        params.permit(:name, :email, :password, :password_confirmation)
    end
end
