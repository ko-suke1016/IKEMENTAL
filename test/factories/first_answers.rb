
FactoryBot.define do
    factory :first_answer do
      answer {"sssssssss"}
      score {5}
      association :first_question
    end
  end

