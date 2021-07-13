class LessonAnswer < ApplicationRecord

    validates :answer, presence: true
    validates :score, presence: true
    belongs_to :lesson_question
end
