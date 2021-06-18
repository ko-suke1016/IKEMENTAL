FactoryBot.define do
  factory :user do
    name {"hiro"}
    sequence(:email) { |n| "hiro#{n}@example.com"}
    password {"password"}
    password_confirmation {"password"}
    physical_gage {100}
    experience_gage {0}
    position {"ヨワヨワメンタル新入社員"}
  end
end
