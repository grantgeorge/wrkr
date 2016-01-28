class AddWeightToCompletedSets < ActiveRecord::Migration
  def change
    add_column :completed_sets, :weight, :integer
  end
end
