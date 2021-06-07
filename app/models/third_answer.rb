class ThirdAnswer < ApplicationRecord
  validates :answer, presence: true
  validates :score, presence: true
  belongs_to :third_question
end
