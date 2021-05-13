FactoryBot.define do
  factory :question do
    contest { nil }
    number { 1 }
    description { "MyText" }
    language { "MyString" }
  end
end
