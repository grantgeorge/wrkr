class CreateWorkoutTemplatesJoinTable < ActiveRecord::Migration
  def change
    create_join_table :workout_templates, :exercise_templates do |t|
      # t.index [:workout_template_id, :exercise_template_id]
      t.index [:exercise_template_id, :workout_template_id], unique: true,
                                                             name: 'index_workout_templates_exercise_templates'
    end
  end
end
