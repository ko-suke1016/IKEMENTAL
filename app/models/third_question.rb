class ThirdQuestion < ApplicationRecord
    validates :question, presence: true
    validates :age, presence: true
    validates :sex, presence: true
    validates :profession, presence: true

    has_many :third_answers
end
