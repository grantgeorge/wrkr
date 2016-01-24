class ExerciseTemplateSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :published, :upvotes_count, :downvotes_count, :comments_count, :completions_count, :references
end
