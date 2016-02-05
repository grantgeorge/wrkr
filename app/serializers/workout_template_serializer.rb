class WorkoutTemplateSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :upvotes_count, :downvotes_count,
             :comments_count, :completions_count, :exercises_count, :published,
             :user_id

  has_many :exercise_templates
  has_many :comments
end
