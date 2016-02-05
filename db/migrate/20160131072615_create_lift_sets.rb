class CreateLiftSets < ActiveRecord::Migration
  def change
    create_table :lift_sets do |t|
      t.integer :number_of_reps
      t.integer :weight
      t.references :exercise, index: true, foreign_key: true
      t.boolean :completed
      t.datetime :started_at
      t.datetime :compelted_at

      t.timestamps null: false
    end
  end
end
