class FirstsController < ApplicationController
    def new
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
        @total = QuestionResult.new
        @total.user_id = current_user.id
        if @total.total == nil
            @total.total = params[:id]
        else
            @total.total += params[:id]
        end
        respond_to do |format|
            if @total.save
                format.html
                format.js
            else
                format.js { render :create }
            end
        end
    end
end
