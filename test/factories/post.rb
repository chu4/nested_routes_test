FactoryBot.define do
  factory :post, class: Post do
    title { Faker::Beer.name }
    description { Faker::Lorem.paragraphs(1).join }
    association :user, factory: :user
  end
end