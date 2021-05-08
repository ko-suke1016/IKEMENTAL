class ThirdQuestion < ApplicationRecord
    validates :question, presence:true
    validates :comentary, presence:true

    has_many :third_answers
end
