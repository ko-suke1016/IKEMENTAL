class RecoveryQuestion < ApplicationRecord

    validates :question, presence: true
    validates :comentary, presence: true

    has_many :recovery_answers
end
