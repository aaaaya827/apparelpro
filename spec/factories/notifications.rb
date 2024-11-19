FactoryBot.define do
  factory :notification do
    visitor_id { 1 }
    visited_id { 2 }
    action { 'comment' }
    question_id { 1 }
    comment_id { 1 }
  end
end
