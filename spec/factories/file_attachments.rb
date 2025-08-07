FactoryBot.define do
  factory :file_attachment do
    filename { "MyString" }
    content_type { "MyString" }
    file_size { "" }
    attachable { nil }
    user { nil }
    created_at { "2025-08-06 22:58:18" }
  end
end
