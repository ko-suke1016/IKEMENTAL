class LessonsController < ApplicationController
    skip_before_action  :require_login, only: [:index]

    def index
        return redirect_to tops_path, warning: 'レッスンはPC専用です。' if request.from_smartphone?
        # 基礎問題の問題と回答の抽出
        @lesson_question = LessonQuestion.all.includes(:lesson_answers)
    end
end
