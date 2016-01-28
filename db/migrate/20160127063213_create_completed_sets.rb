class CreateCompletedSets < ActiveRecord::Migration
  def change
    create_table :completed_sets do |t|
      t.integer :repetitions
      t.references :exercise, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
