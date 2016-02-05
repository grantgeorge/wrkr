class CreateExercises < ActiveRecord::Migration
  def change
    create_table :exercises do |t|
      t.string :type
      t.references :workout, index: true, foreign_key: true
      t.references :exercise_template, index: true, foreign_key: true
      t.integer :lift_sets_count
      t.integer :intervals_count

      t.timestamps null: false
    end
  end
end
