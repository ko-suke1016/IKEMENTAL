class FirstsController < ApplicationController
    def new
        @total = QuestionResult.find_by(user_id: current_user.id)
        if @total == nil
            @total = QuestionResult.new(user_id: current_user.id)
        elsif @total.total == nil
            @total.total = 0
        elsif @total.total != 0
            @total.total = 0
        end
        @total.save

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
    end

    def index
        @firsts_results = QuestionResult.find_by(user_id: current_user.id)
    end

    def create
        @total_score = QuestionResult.find_by(user_id: current_user.id)
        # nilだった場合DBにnilではなく0を代入
        if @total_score.total == nil
            @total_score.total = 0
        end
        #ajaxで送られてきたデータを代入
        @score_data = params[:id]
        #現在dbにある値と足して保存
        @update_score = @total_score.total + @score_data.to_i
        #update
        @total_score.update_column(:total, @update_score)
        #最後の問題が答えられた場合結果画面へ
    end

    def reset
    end
end
