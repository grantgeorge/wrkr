class WorkoutSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :workout_template_id
  has_many :lift_exercises
  has_many :interval_exercises
end
