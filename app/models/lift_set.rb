class LiftSet < ActiveRecord::Base
  belongs_to :exercise, :foreign_key => 'exercise_id', counter_cache: true
end
