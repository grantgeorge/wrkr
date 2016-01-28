class CompletedSetSerializer < ActiveModel::Serializer
  attributes :id,
             :repetitions,
             :exercise_id,
             :weight
end
