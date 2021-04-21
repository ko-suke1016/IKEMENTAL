class QuestionResult < ApplicationRecord
  enum question_type: { scores: 0, counts: 1, selects: 2}
  belongs_to :user
end
