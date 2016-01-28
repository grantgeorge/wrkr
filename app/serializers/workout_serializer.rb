class WorkoutSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :workout_template_id
  has_many :exercises
end
