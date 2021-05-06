class SecondsController < ApplicationController
    def new
        @total = QuestionResult.find_by(user_id: current_user.id, question_type: 1)
        if @total == nil
            @total = QuestionResult.new(user_id: current_user.id, question_type: 1)
        elsif @total.total == nil
            @total.total = 0
        elsif @total.total != 0
            @total.total = 0
        end
        @total.save

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

    def index
        @seconds_results = QuestionResult.find_by(user_id: current_user.id, question_type: 1)
    end

    def create
        @total_score = QuestionResult.find_by(user_id: current_user.id, type: 1)
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
    end

    def reset
    end
end
