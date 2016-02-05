class ExerciseTemplate < ActiveRecord::Base
  belongs_to :user
  has_and_belongs_to_many :workout_templates
  has_many :exercises
  has_many :comments, as: :commentable
  has_many :upvotes, as: :upvotable
  has_many :downvotes, as: :downvotable
end
