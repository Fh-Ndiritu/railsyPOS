FactoryBot.define do
  factory :category do
    name  { Faker::Commerce.department }
    image { nil }
  end
end
