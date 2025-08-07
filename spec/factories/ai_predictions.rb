FactoryBot.define do
  factory :ai_prediction do
    project { nil }
    prediction_type { "MyString" }
    predicted_completion_date { "2025-08-06" }
    confidence_score { "9.99" }
    factors { "" }
    created_at { "2025-08-06 22:58:00" }
  end
end
