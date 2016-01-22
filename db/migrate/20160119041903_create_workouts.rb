class CreateWorkouts < ActiveRecord::Migration
  def change
    create_table :workouts do |t|
      t.string :name
      t.text :description
      t.integer :upvotes_count
      t.integer :downvotes_count
      t.integer :comments_count
      t.integer :workout_completions_count
      t.integer :exercises_count
      t.boolean :published
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
