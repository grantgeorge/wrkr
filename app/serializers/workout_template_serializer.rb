class WorkoutTemplateSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :upvotes_count, :downvotes_count,
             :comments_count, :completions_count, :exercises_count, :published
  has_one :user
  has_many :exercise_templates
end
