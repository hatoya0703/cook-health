FactoryBot.define do
  factory :recipe_ingredient do
    title { "テストrecipe1" }
    content { "テストの説明文です"}
    category_id { Faker::Number.between(from: 1, to: 10) }
    description { "テストの調理法です" }
    material { "テストの材料名です" }
    quantity { "テストの分量です" }
  end
end
