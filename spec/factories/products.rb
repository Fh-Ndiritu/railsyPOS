FactoryBot.define do
  factory :product do
    name { Faker::Commerce.product_name }
    description { Faker::Lorem.sentence }
    price { Faker::Commerce.price(range: 10..100.0) }
    active { [ true, false ].sample }
    category
  end
end
