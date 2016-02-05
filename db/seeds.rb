# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'factory_girl'
include FactoryGirl::Syntax::Methods

DatabaseCleaner.clean_with(:truncation)

u = create(:user)

# wt1 = create(:workout_template, user: u)
# wt2 = create(:workout_template, user: u)

25.times do
  w = create(:workout_template, user: u )
  5.times { w.exercise_templates << create(:exercise_template, user: u) }
  10.times { create(:comment, commentable: w, user: u)}
  10.times { create(:upvote, upvotable: w, user: u) }
  10.times { create(:downvote, downvotable: w, user: u) }
end

et = ExerciseTemplate.first
10.times { create(:upvote, upvotable: et, user: u) }

wt = WorkoutTemplate.first

w = create(:workout, workout_template: wt, user: u)
wt.exercise_templates.each do |exercise_template|
  create(:lift_exercise, workout: w, exercise_template_id: exercise_template.id)
  create(:interval_exercise, workout: w, exercise_template_id: exercise_template.id)
end

# 3.times { wt1.exercise_templates << create(:exercise_template, user: u) }
# 3.times { wt2.exercise_templates << create(:exercise_template, user: u) }

# w1 = create(:workout, user: u, workout_template: wt1)
# w2 = create(:workout, user: u, workout_template: wt2)

# create(:exercise, user: u, workout: w1, exercise_template: wt1.exercise_templates.find(1))
# create(:exercise, user: u, workout: w1, exercise_template: wt1.exercise_templates.find(2))
# create(:exercise, user: u, workout: w1, exercise_template: wt1.exercise_templates.find(3))

# create(:exercise, user: u, workout: w2, exercise_template: wt2.exercise_templates.find(4))
# create(:exercise, user: u, workout: w2, exercise_template: wt2.exercise_templates.find(5))
# create(:exercise, user: u, workout: w2, exercise_template: wt2.exercise_templates.find(6))
