class WorkoutSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :upvotes_count, :downvotes_count,
             :comments_count, :workout_completions_count, :exercises_count,
             :published
  has_one :user
  has_many :comments
end
