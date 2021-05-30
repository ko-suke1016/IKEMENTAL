class UsersController < ApplicationController
    def index
        # ユーザー情報の取得
        @user = User.find_by(id: current_user)

        # 一問一答問題の質問と答え(このままだと同じ問題しか出ないのでfirstを変更する)
        @third_question = ThirdQuestion.order("RAND()").first
        @third_answers = ThirdAnswer.where(third_question_id: @third_question)

        #回答結果保存モデルへのインスタンス取得ないし初期化
        @total1 = QuestionResult.find_by(user_id: current_user.id, question_type: 2)
        if @total1 == nil
            @total1 = QuestionResult.new(user_id: current_user.id, question_type: 2)
        end
        @total1.save

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

        #各問題をdbから引っ張ってくる
        @first_question1 = FirstQuestion.find(1)
        @first_answers1 = FirstAnswer.where(first_question_id: 1)

        @first_question2 = FirstQuestion.find(2)
        @first_answers2 = FirstAnswer.where(first_question_id: 2)

        @first_question3 = FirstQuestion.find(3)
        @first_answers3 = FirstAnswer.where(first_question_id: 3)

        @first_question4 = FirstQuestion.find(4)
        @first_answers4 = FirstAnswer.where(first_question_id: 4)

        @first_question5 = FirstQuestion.find(5)
        @first_answers5 = FirstAnswer.where(first_question_id: 5)

        @first_question6 = FirstQuestion.find(6)
        @first_answers6 = FirstAnswer.where(first_question_id: 6)

        @first_question7 = FirstQuestion.find(7)
        @first_answers7 = FirstAnswer.where(first_question_id: 7)

        @first_question8 = FirstQuestion.find(8)
        @first_answers8 = FirstAnswer.where(first_question_id: 8)

        @first_question9 = FirstQuestion.find(9)
        @first_answers9 = FirstAnswer.where(first_question_id: 9)

        @first_question10 = FirstQuestion.find(10)
        @first_answers10 = FirstAnswer.where(first_question_id: 10)

        # 応用の問題の抽出

        @second_question1 = SecondQuestion.find(1)
        @second_answers1 = SecondAnswer.where(second_question_id: 1)

        @second_question2 = SecondQuestion.find(2)
        @second_answers2 = SecondAnswer.where(second_question_id: 2)

        @second_question3 = SecondQuestion.find(3)
        @second_answers3 = SecondAnswer.where(second_question_id: 3)

        @second_question4 = SecondQuestion.find(4)
        @second_answers4 = SecondAnswer.where(second_question_id: 4)

        @second_question5 = SecondQuestion.find(5)
        @second_answers5 = SecondAnswer.where(second_question_id: 5)

        @second_question6 = SecondQuestion.find(6)
        @second_answers6 = SecondAnswer.where(second_question_id: 6)

        @second_question7 = SecondQuestion.find(7)
        @second_answers7 = SecondAnswer.where(second_question_id: 7)

        @second_question8 = SecondQuestion.find(8)
        @second_answers8 = SecondAnswer.where(second_question_id: 8)

        @second_question9 = SecondQuestion.find(9)
        @second_answers9 = SecondAnswer.where(second_question_id: 9)

        @second_question10 = SecondQuestion.find(10)
        @second_answers10 = SecondAnswer.where(second_question_id: 10)
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

    def level_up
        @user = User.find_by(id: current_user)
        respond_to do |format|
            format.js {render 'users/level_up.js.erb'}
        end
    end

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
