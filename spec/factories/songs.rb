FactoryGirl.define do
  factory :song do
    title { Faker::Name.name }
  end
end
