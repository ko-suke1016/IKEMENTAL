class ThirdAnswer < ApplicationRecord
    enum answer: { true: 0, false: 1 }
    validates :answer, presence: true
    validates :score, presence: true

    belongs_to :third_question
end
