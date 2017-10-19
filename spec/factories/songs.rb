FactoryGirl.define do
  factory :song do
    title { Faker::Lorem.words(1) }
  end
end
