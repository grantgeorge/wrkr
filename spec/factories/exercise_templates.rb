FactoryGirl.define do
  factory :exercise_template do
    name { Faker::App.name }
    description { Faker::Hacker.say_something_smart }
    published false
    upvotes_count 0
    downvotes_count 0
    comments_count 0
    completions_count 0
  end
end
