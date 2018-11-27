FactoryBot.define do
    sequence(:name) { |n| "#{n}" }

    factory :product do
      name
      price 10.0
      description "Test description"
      colour "blue"
      image_url "braclet_1.jpg"
      size "5"
    end

  end
