class SecondAnswer < ApplicationRecord
  validates :answer, presence: true
  validates :score, presence: true
  belongs_to :second_question
end
