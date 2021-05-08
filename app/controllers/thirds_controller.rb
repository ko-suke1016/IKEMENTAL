class ThirdsController < ApplicationController
    def create
        @total_score = QuestionResult.find_by(user_id: current_user.id, question_type: 2)
        # nilだった場合DBにnilではなく0を代入
        if @total_score.total == nil
            @total_score.total = 0
        end
        # ajaxで送られてきたデータを代入
        @score_data = params[:id]
        # paramsで送られてきたデータを数字に変換
        @update_score = @score_data.to_i
        # totalに保存
        @total_score.update_column(:total, @update_score)
    end
end
