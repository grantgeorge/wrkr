FactoryGirl.define do
  factory :workout do
    name { Faker::App.name }
    description { Faker::Hacker.say_something_smart }
    upvotes_count 0
    downvotes_count 0
    comments_count 0
    workout_completions_count 0
    exercises_count 0
    published true
    user
  end
end
