class CreateExercises < ActiveRecord::Migration
  def change
    create_table :exercises do |t|
      t.references :workout, index: true, foreign_key: true
      t.references :exercise_template, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
