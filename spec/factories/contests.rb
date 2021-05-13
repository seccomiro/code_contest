FactoryBot.define do
  factory :contest do
    name { "MyString" }
    organizer { "MyString" }
    starts_at { "2021-05-13 13:50:12" }
    finishes_at { "2021-05-13 13:50:12" }
    user { nil }
  end
end
