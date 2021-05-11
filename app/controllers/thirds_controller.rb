class ThirdsController < ApplicationController
    def create
        @user = User.find(id: current_user.id)
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
        # physical_gageの値を減らす
        @physical_gage_score = @user.physical_gage - @update_score
        #最新のphysical_gageの値をアップデート
        @user.update_column(:physical_gage, @physical_gage_score)
    end

    def physical
        @user = User.find_by(id: current_user.id)
        # 送られてきたデータを格納
        @score_data = params[:id]
        # 数値化
        @update_score = @score_data.to_i
        # physical_gageの値を減らす
        @physical_gage_score = @user.physical_gage - @update_score
        #最新のphysical_gageの値をアップデート
        @user.update_column(:physical_gage, @physical_gage_score)
    end
end
