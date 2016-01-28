class Exercise < ActiveRecord::Base
  belongs_to :workout
  belongs_to :exercise_template
  belongs_to :user
  has_many :completed_sets
  has_many :intervals
end
