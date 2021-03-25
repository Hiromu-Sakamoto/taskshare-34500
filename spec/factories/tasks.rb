FactoryBot.define do
  factory :task do
    title                { Faker::Lorem.sentence }
    matter               { Faker::Lorem.sentence }
    supplement           { Faker::Lorem.sentence }
    scheduled_date       { Faker::Date }
    completion_date      { Faker::Date }
    status_id            { Faker::Number.between(from: 1, to: 5) }
    progress_id          { Faker::Number.between(from: 1, to: 11) }
    flag_id              { Faker::Number.between(from: 1, to: 4) }
    association :user
  end
end
