# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20160131074828) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comments", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "commentable_id"
    t.string   "commentable_type"
    t.text     "content"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "comments", ["user_id"], name: "index_comments_on_user_id", using: :btree

  create_table "downvotes", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "downvotable_id"
    t.string   "downvotable_type"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "downvotes", ["downvotable_type", "downvotable_id"], name: "index_downvotes_on_downvotable_type_and_downvotable_id", using: :btree
  add_index "downvotes", ["user_id"], name: "index_downvotes_on_user_id", using: :btree

  create_table "exercise_templates", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.boolean  "published"
    t.integer  "upvotes_count"
    t.integer  "downvotes_count"
    t.integer  "comments_count"
    t.integer  "completions_count"
    t.integer  "user_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "exercise_templates", ["user_id"], name: "index_exercise_templates_on_user_id", using: :btree

  create_table "exercise_templates_workout_templates", id: false, force: :cascade do |t|
    t.integer "workout_template_id",  null: false
    t.integer "exercise_template_id", null: false
  end

  add_index "exercise_templates_workout_templates", ["exercise_template_id", "workout_template_id"], name: "index_workout_templates_exercise_templates", unique: true, using: :btree

  create_table "exercises", force: :cascade do |t|
    t.string   "type"
    t.integer  "workout_id"
    t.integer  "exercise_template_id"
    t.integer  "lift_sets_count"
    t.integer  "intervals_count"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "exercises", ["exercise_template_id"], name: "index_exercises_on_exercise_template_id", using: :btree
  add_index "exercises", ["workout_id"], name: "index_exercises_on_workout_id", using: :btree

  create_table "intervals", force: :cascade do |t|
    t.integer  "duration"
    t.integer  "number_of_reps"
    t.integer  "exercise_id"
    t.datetime "started_at"
    t.datetime "completed_at"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "intervals", ["exercise_id"], name: "index_intervals_on_exercise_id", using: :btree

  create_table "lift_sets", force: :cascade do |t|
    t.integer  "number_of_reps"
    t.integer  "weight"
    t.integer  "exercise_id"
    t.boolean  "completed"
    t.datetime "started_at"
    t.datetime "compelted_at"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "lift_sets", ["exercise_id"], name: "index_lift_sets_on_exercise_id", using: :btree

  create_table "upvotes", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "upvotable_id"
    t.string   "upvotable_type"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "upvotes", ["upvotable_type", "upvotable_id"], name: "index_upvotes_on_upvotable_type_and_upvotable_id", using: :btree
  add_index "upvotes", ["user_id"], name: "index_upvotes_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "provider",               default: "email", null: false
    t.string   "uid",                    default: "",      null: false
    t.string   "encrypted_password",     default: "",      null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,       null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.integer  "failed_attempts",        default: 0,       null: false
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.string   "name"
    t.string   "nickname"
    t.string   "image"
    t.string   "email"
    t.json     "tokens"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true, using: :btree
  add_index "users", ["email"], name: "index_users_on_email", using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  add_index "users", ["uid", "provider"], name: "index_users_on_uid_and_provider", unique: true, using: :btree
  add_index "users", ["unlock_token"], name: "index_users_on_unlock_token", unique: true, using: :btree

  create_table "workout_templates", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "name"
    t.text     "description"
    t.integer  "upvotes_count"
    t.integer  "downvotes_count"
    t.integer  "comments_count"
    t.integer  "completions_count"
    t.integer  "exercises_count"
    t.boolean  "published"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "workout_templates", ["user_id"], name: "index_workout_templates_on_user_id", using: :btree

  create_table "workouts", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "workout_template_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  add_index "workouts", ["user_id"], name: "index_workouts_on_user_id", using: :btree
  add_index "workouts", ["workout_template_id"], name: "index_workouts_on_workout_template_id", using: :btree

  add_foreign_key "comments", "users"
  add_foreign_key "downvotes", "users"
  add_foreign_key "exercise_templates", "users"
  add_foreign_key "exercises", "exercise_templates"
  add_foreign_key "exercises", "workouts"
  add_foreign_key "intervals", "exercises"
  add_foreign_key "lift_sets", "exercises"
  add_foreign_key "upvotes", "users"
  add_foreign_key "workout_templates", "users"
  add_foreign_key "workouts", "users"
  add_foreign_key "workouts", "workout_templates"
end
