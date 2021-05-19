class CuresController < ApplicationController

    def recovery
        @user = User.find_by(id: current_user.id)
        @user_mental = @user.physical_gage
         #ajaxで送られてきたデータを代入
         @score_data = params[:id]
         #現在dbにある値と足して保存
         @update_score = @user_mental + @score_data.to_i
         #update
         @user.update_column(:physical_gage, @update_score)
    end

end