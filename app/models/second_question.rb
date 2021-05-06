class SecondQuestion < ApplicationRecord
    validates :question, presence: true

    has_many :second_answers
end
