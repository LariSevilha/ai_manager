FactoryBot.define do
  factory :notification do
    recipient { nil }
    sender { nil }
    title { "MyString" }
    message { "MyText" }
    notification_type { "MyString" }
    read { false }
    data { "" }
    created_at { "2025-08-06 22:58:04" }
  end
end
