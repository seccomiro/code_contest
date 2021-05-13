# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_05_13_165950) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "clarifications", force: :cascade do |t|
    t.bigint "team_id", null: false
    t.bigint "question_id", null: false
    t.bigint "judge_id", null: false
    t.string "question"
    t.string "answer"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["judge_id"], name: "index_clarifications_on_judge_id"
    t.index ["question_id"], name: "index_clarifications_on_question_id"
    t.index ["team_id"], name: "index_clarifications_on_team_id"
  end

  create_table "contests", force: :cascade do |t|
    t.string "name"
    t.string "organizer"
    t.datetime "starts_at"
    t.datetime "finishes_at"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_contests_on_user_id"
  end

  create_table "evaluations", force: :cascade do |t|
    t.bigint "submission_id", null: false
    t.bigint "judge_id", null: false
    t.integer "result"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["judge_id"], name: "index_evaluations_on_judge_id"
    t.index ["submission_id"], name: "index_evaluations_on_submission_id"
  end

  create_table "judges", force: :cascade do |t|
    t.string "name"
    t.bigint "user_id", null: false
    t.bigint "contest_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["contest_id"], name: "index_judges_on_contest_id"
    t.index ["user_id"], name: "index_judges_on_user_id"
  end

  create_table "questions", force: :cascade do |t|
    t.bigint "contest_id", null: false
    t.integer "number"
    t.text "description"
    t.string "language"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["contest_id"], name: "index_questions_on_contest_id"
  end

  create_table "submissions", force: :cascade do |t|
    t.bigint "question_id", null: false
    t.bigint "team_id", null: false
    t.text "code"
    t.string "language"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["question_id"], name: "index_submissions_on_question_id"
    t.index ["team_id"], name: "index_submissions_on_team_id"
  end

  create_table "teams", force: :cascade do |t|
    t.string "name"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_teams_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "clarifications", "judges"
  add_foreign_key "clarifications", "questions"
  add_foreign_key "clarifications", "teams"
  add_foreign_key "contests", "users"
  add_foreign_key "evaluations", "judges"
  add_foreign_key "evaluations", "submissions"
  add_foreign_key "judges", "contests"
  add_foreign_key "judges", "users"
  add_foreign_key "questions", "contests"
  add_foreign_key "submissions", "questions"
  add_foreign_key "submissions", "teams"
  add_foreign_key "teams", "users"
end
