FactoryBot.define do
  factory :comment do
    content { "MyText" }
    user { nil }
    commentable { nil }
    parent_id { 1 }
    created_at { "2025-08-06 22:57:54" }
  end
end
