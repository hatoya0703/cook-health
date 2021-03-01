# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.create(
  nickname: "管理者",
  email: "admin@gmail.com",
  password: "qwer1234",
  password_confirmation: "qwer1234",
  admin: true
)

3.times do |n|
  User.create(
    nickname: "user#{n+1}",
    email: "test#{n+1}@gmail.com",
    password: "qwer1234",
    password_confirmation: "qwer1234",
  )
end

10.times do |n|
  Nutrient.create(
    nutrient_name: "栄養#{n+1}",
    nutrient_comment: "これはテスト栄養のコメントです",
    nutrient_content: "これはテスト栄養のコメントです"
    )
  Nutrient.find(n+1).image.attach(io: File.open('public/test_img/test.jpeg'), filename: 'test.jpeg')
end