FactoryBot.define do
  factory :task do
    title { "MyString" }
    description { "MyText" }
    status { 1 }
    priority { 1 }
    due_date { "2025-08-06" }
    estimated_hours { "9.99" }
    actual_hours { "9.99" }
    position { 1 }
    project { nil }
    assignee { nil }
  end
end
