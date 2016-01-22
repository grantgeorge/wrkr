class WorkoutSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :upvotes_count, :downvotes_count,
             :comments_count, :workout_completions_count, :exercises_count,
             :published
  has_one :user
  has_many :comments

  # def filter(keys)
  #   Rails.logger.debug "object #{object.inspect}".light_yellow
  #   keys - [:user]
  # end
  #
  def user
    object.user if serialization_options[:includes].include? "user"
  end

  def comments
    object.comments if serialization_options[:includes].include? "comments"
  end
end
