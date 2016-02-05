class LiftExerciseSerializer < ActiveModel::Serializer
  attributes :id, :workout_id, :exercise_template_id, :lift_sets_count
end
