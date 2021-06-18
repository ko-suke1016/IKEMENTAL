FactoryBot.define do
    factory :recovery_answer do
      answer {"sssssssss"}
      score {7}
      association :recovery_question
    end
end

