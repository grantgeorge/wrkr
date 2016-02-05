class LiftExercise < Exercise
  has_many :lift_sets, :foreign_key => :exercise_id
end
