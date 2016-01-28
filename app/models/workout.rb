class Workout < ActiveRecord::Base
  belongs_to :workout_template
  belongs_to :user
  has_many :exercises
end
