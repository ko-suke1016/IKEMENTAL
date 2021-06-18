FactoryBot.define do
    factory :third_answer do
      answer {"sssssssss"}
      score {5}
      association :third_question
    end
  end