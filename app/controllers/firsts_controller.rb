class FirstsController < ApplicationController
    before_action  :require_login, only: [:create]

    def create
        @user = User.find(current_user.id)
        #ajaxで送られてきたデータを代入
        @score_data = params[:id]
        #送られてきた値を5でわって経験値を出し現在の経験値とたす
        @experience_score = if @score_data.to_i == 0
                                @user.experience_gage + 2
                            elsif @score_data.to_i == 5
                                @user.experience_gage + 1
                            elsif @score_data.to_i == 10
                                @user.experience_gage + 0
                            end
        #userのexperience_gageにたす
        if @user.update_column(:experience_gage, @experience_score)
            respond_to do |format|
                format.json { render json: { id: params[:id] } }
            end
        end

        #experience_gageの値が50を超えたら0にする
        if @user.experience_gage >= 35
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
