class IntervalExerciseSerializer < ActiveModel::Serializer
  attributes :id, :workout_id, :exercise_template_id, :intervals_count
end
