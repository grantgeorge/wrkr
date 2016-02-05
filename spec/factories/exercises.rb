FactoryGirl.define do
  factory :exercise do
    workout nil
    exercise_template nil

    trait :lift do
      type "LiftExercise"
    end

    trait :interval do
      type "IntervalExercise"
    end

    factory :lift_exercise do
      type "LiftExercise"
    end

    factory :interval_exercise do
      type "IntervalExercise"
    end
  end
end
