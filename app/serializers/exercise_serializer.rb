class ExerciseSerializer < ActiveModel::Serializer
  attributes :id, :workout_id, :user_id
  has_one :exercise_template, embed: :object, serializer: ExerciseTemplateSerializer, include: true
  has_many :completed_sets, embed: :object, serializer: CompletedSetSerializer, include: true
  has_many :intervals, embed: :object, serializer: IntervalSerializer, include: true

  def include_id?
    object.id
  end

  def workout_id?
    object.workout_id
  end

  def user_id?
    object.user_id
  end

  def include_exercise_template?
    # would include because the association is hydrated
    object.association(:exercise_template).loaded?
  end

  def include_completed_sets?
    # would include because the association is hydrated
    object.association(:completed_sets).loaded?
  end

  def include_intervals?
    # would include because the association is hydrated
    object.association(:intervals).loaded?
  end
end
