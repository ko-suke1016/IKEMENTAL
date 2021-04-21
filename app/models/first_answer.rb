class FirstAnswer < ApplicationRecord
  validates :answer, presence: true
  validates :score, presence: true
  belongs_to :first_question
end
