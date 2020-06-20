FactoryBot.define do
  factory :admin_user do
    email { Faker::Internet.email }

    after(:build) do |u|
      u.password_confirmation = u.password = 12345678
    end
  end
end
