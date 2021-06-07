class CuresController < ApplicationController

    def recovery_icon
        @user = User.find_by(id: current_user)
        @user_mental = @user.physical_gage
        #ajaxで送られてきたデータを代入
        @score_data = params[:score]
        #現在dbにある値と足して保存
        @update_score = @user_mental + @score_data.to_i
        #update
        if @update_score >= 100
            @user.update_column(:physical_gage, 100 )
        else
            @user.update_column(:physical_gage, @update_score)
        end
    end

end