FactoryBot.define do
  factory :user do
    nickname              { Faker::Name.name }
    email                 { Faker::Internet.email }
    password              { "password1234" }
    password_confirmation { password }
  end
end
