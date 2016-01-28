class IntervalSerializer < ActiveModel::Serializer
  attributes :id,
             :time,
             :exercise_id
end
