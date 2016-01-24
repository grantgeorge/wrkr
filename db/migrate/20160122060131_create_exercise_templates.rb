class CreateExerciseTemplates < ActiveRecord::Migration
  def change
    create_table :exercise_templates do |t|
      t.string :name
      t.text :description
      t.boolean :published
      t.integer :upvotes_count
      t.integer :downvotes_count
      t.integer :comments_count
      t.integer :completions_count
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
