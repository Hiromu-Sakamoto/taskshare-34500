FactoryBot.define do
  factory :user do
    name                  { Faker::Name.initials(number: 2) }
    email                 { Faker::Internet.free_email }
    password              { Faker::Internet.password }
    password_confirmation { password }
    occupation            { Faker::Name.initials(number: 2) }
    position              { Faker::Name.initials(number: 2) }
  end
end
