class IntervalSerializer < ActiveModel::Serializer
  attributes :id, :duration, :number_of_reps, :started_at, :completed_at
end
