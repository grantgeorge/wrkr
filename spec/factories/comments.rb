FactoryGirl.define do
  factory :comment do
    user
    commentable nil
    content { Faker::Hacker.say_something_smart }
  end
end
