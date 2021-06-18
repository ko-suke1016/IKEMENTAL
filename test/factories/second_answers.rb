FactoryBot.define do
    factory :second_answer do
      answer {"sssssssss"}
      score {5}
      association :second_question
    end
  end