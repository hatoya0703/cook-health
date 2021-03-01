FactoryBot.define do
  factory :nutrient do
    nutrient_name { Faker::Lorem.word }
    nutrient_content { Faker::Lorem.word }
  end
end
