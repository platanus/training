FactoryBot.define do
  factory :blog do
    title { "MyString" }
    body { "MyText" }
    user
  end
end
