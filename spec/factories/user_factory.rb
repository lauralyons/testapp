FactoryBot.define do
  sequence(:email) { |n| "user#{n}@example.com" }

  factory :user do
    email
    password "1234567890"
    admin false
  end

    factory :admin, parent: :user do
    id 1
    admin true
  end
end
