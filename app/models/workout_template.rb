class WorkoutTemplate < ActiveRecord::Base
  belongs_to :user
  has_and_belongs_to_many :exercise_templates
  has_many :workouts
  has_many :comments, as: :commentable
  has_many :upvotes, as: :upvotable
  has_many :downvotes, as: :downvotable
end
