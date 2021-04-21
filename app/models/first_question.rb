class FirstQuestion < ApplicationRecord
    validates :question, presence: true

    has_many :first_answers
end
