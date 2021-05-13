FactoryBot.define do
  factory :clarification do
    team { nil }
    question { nil }
    judge { nil }
    question { "MyString" }
    answer { "MyString" }
  end
end
