class IntervalExercise < Exercise
  has_many :intervals, :foreign_key => :exercise_id
end
