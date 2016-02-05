class CreateWorkouts < ActiveRecord::Migration
  def change
    create_table :workouts do |t|
      t.references :user, index: true, foreign_key: true
      t.references :workout_template, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
