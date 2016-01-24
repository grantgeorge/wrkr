class CreateWorkoutTemplates < ActiveRecord::Migration
  def change
    create_table :workout_templates do |t|
      t.references :user, index: true, foreign_key: true
      t.string :name
      t.text :description
      t.integer :upvotes_count
      t.integer :downvotes_count
      t.integer :comments_count
      t.integer :completions_count
      t.integer :exercises_count
      t.boolean :published

      t.timestamps null: false
    end
  end
end
