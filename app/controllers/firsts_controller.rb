class FirstsController < ApplicationController
    def new
        @total = QuestionResult.new(user_id: current_user.id)
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
    end

    def index
    end

    def create
        @total_score = QuestionResult.find_by(user_id: current_user.id)
        if @total_score.total == nil
            @total_score.total = 0
        end
        @score_data = params[:id]
        @update_score = @total_score.total + @score_data.to_i
        @total_score.update_column(:total, @update_score)
    end
end
