FactoryBot.define do
  factory :schedule do
    title { "MyString" }
    start_date { "2026-06-08" }
    end_date { "2026-06-08" }
    is_all_day { false }
    memo { "MyText" }
  end
end
