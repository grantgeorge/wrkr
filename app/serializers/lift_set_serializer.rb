class LiftSetSerializer < ActiveModel::Serializer
  attributes :id, :number_of_reps, :weight, :completed, :started_at, :compelted_at
end
