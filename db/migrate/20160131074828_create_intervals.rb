class CreateIntervals < ActiveRecord::Migration
  def change
    create_table :intervals do |t|
      t.integer :duration
      t.integer :number_of_reps
      t.references :exercise, index: true, foreign_key: true
      t.datetime :started_at
      t.datetime :completed_at

      t.timestamps null: false
    end
  end
end
