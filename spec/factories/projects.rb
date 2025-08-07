FactoryBot.define do
  factory :project do
    name { "MyString" }
    description { "MyText" }
    status { 1 }
    priority { 1 }
    project_type { "MyString" }
    deadline { "2025-08-06" }
    budget { "9.99" }
    user { nil }
    created_at { "2025-08-06 22:57:35" }
    updated_at { "2025-08-06 22:57:35" }
  end
end
