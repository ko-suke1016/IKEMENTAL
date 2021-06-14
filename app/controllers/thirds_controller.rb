class ThirdsController < ApplicationController
    before_action  :require_login, only: [:create, :physical, :experience, :execution]

    def create
        @user = User.find_by(id: current_user.id)
        # ajaxで送られてきたデータを代入
        @score_data = params[:id]
        # paramsで送られてきたデータを数字に変換
        @update_score = @score_data.to_i
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

    def experience
        @user = User.find_by(id: current_user.id)
        # 送られてきたデータを格納
        @score_data = params[:id]
        # 数値化
        @update_score = @score_data.to_i
        # experience_gageの値を追加
        @experience_gage_score = @user.experience_gage.to_i + @update_score
        #最新のexperience_gageの値をアップデート
        @user.update_column(:experience_gage, @experience_gage_score)
        #experience_gageの値が50を超えたら0にする
        if @user.experience_gage >= 50
            @user.update_column(:experience_gage, 0 )
            @user_position = @user.position_before_type_cast + 1
            if @user.update_column(:position, @user_position)
                redirect_to level_up_path
            end
        end
    end

    # cronで一定時間置きに値が増加する処理
    def execution
        @user = User.find_by(id: current_user.id)
        @user_score = @user.physical_gage
        respond_to do |format|
            format.json { render json: @user_score}
        end
    end
end
