FactoryBot.define do
  factory :comment, class: Comment do
    content { Faker::Lorem.paragraphs(1).join }
    association :user, factory: :user
    association :post, factory: :post
  end
end