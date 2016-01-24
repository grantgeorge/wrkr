class WorkoutTemplate < ActiveRecord::Base
  belongs_to :user
  has_and_belongs_to_many :exercise_templates
end
