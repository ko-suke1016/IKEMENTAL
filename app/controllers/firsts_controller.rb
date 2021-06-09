class FirstsController < ApplicationController
    before_action  :require_login, only: [:create]

    def create
        # @total_score = QuestionResult.find_by(user_id: current_user.id, question_type: 0)
        @user = User.find_by(id: current_user.id)
        # nilだった場合DBにnilではなく0を代入
        # if @total_score.total == nil
        #     @total_score.total = 100
        # end
        #ajaxで送られてきたデータを代入
        @score_data = params[:id]
        #現在dbにある値と足して保存
        # @update_score = @total_score.total - @score_data.to_i
        #update
        # @total_score.update_column(:total, @update_score)
        #送られてきた値を5でわって経験値を出し現在の経験値とたす
        @experience_score = if @score_data.to_i == 0
            @user.experience_gage + 2
        elsif @score_data.to_i == 5
            @user.experience_gage + 1
        elsif @score_data.to_i == 10
            @user.experience_gage + 0
        end
        #userのexperience_gageにたす
        @user.update_column(:experience_gage, @experience_score)
        #experience_gageの値が50を超えたら0にする
        if @user.experience_gage >= 50
            @user.update_column(:experience_gage, 0 )
            if @user.position_before_type_cast == 2
                @user_position = @user.position_before_type_cast * 0
            elsif @user.position_before_type_cast < 2
                @user_position = @user.position_before_type_cast + 1
            end
            @user.update_column(:position, @user_position)
        end
    end
end
