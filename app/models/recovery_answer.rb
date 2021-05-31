class RecoveryAnswer < ApplicationRecord
  validates :answer, presence: true
  validates :score, presence: true
  belongs_to :recovery_question
end
