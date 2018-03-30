FactoryBot.define do
  factory :user, class: User do
    name { Faker::Name.unique.first_name { 4..10 } }
    description { Faker::Lorem.paragraphs(1).join }
  end
end