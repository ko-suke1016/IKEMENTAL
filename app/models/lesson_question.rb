class LessonQuestion < ApplicationRecord

    validates :question, presence: true
    has_many :lesson_answers
end
