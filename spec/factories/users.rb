FactoryBot.define do
  factory :user do
    nickname              { Faker::Name.name }
    email                 { Faker::Internet.email }
    password              { Faker::Internet.password(min_length: 6, max_length: 20, mix_case: true)}
    password_confirmation { password }
  end
end