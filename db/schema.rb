# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_07_13_082006) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "first_answers", force: :cascade do |t|
    t.string "answer", null: false
    t.integer "score", null: false
    t.bigint "first_question_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["first_question_id"], name: "index_first_answers_on_first_question_id"
  end

  create_table "first_questions", force: :cascade do |t|
    t.string "question", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "inquiries", force: :cascade do |t|
    t.string "name"
    t.string "message", null: false
    t.integer "category", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "lesson_answers", force: :cascade do |t|
    t.string "answer"
    t.integer "score"
    t.bigint "lesson_question_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["lesson_question_id"], name: "index_lesson_answers_on_lesson_question_id"
  end

  create_table "lesson_questions", force: :cascade do |t|
    t.string "question", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "recovery_answers", force: :cascade do |t|
    t.string "answer", null: false
    t.integer "score", null: false
    t.bigint "recovery_question_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["recovery_question_id"], name: "index_recovery_answers_on_recovery_question_id"
  end

  create_table "recovery_questions", force: :cascade do |t|
    t.string "question", null: false
    t.string "comentary", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "second_answers", force: :cascade do |t|
    t.string "answer", null: false
    t.integer "score", null: false
    t.bigint "second_question_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["second_question_id"], name: "index_second_answers_on_second_question_id"
  end

  create_table "second_questions", force: :cascade do |t|
    t.string "question", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "third_answers", force: :cascade do |t|
    t.string "answer", null: false
    t.integer "score", null: false
    t.bigint "third_question_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["third_question_id"], name: "index_third_answers_on_third_question_id"
  end

  create_table "third_questions", force: :cascade do |t|
    t.string "question", null: false
    t.string "age", null: false
    t.string "sex", null: false
    t.string "profession", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name", null: false
    t.string "email", null: false
    t.string "crypted_password", null: false
    t.string "salt"
    t.integer "physical_gage", default: 100
    t.integer "experience_gage", default: 0
    t.integer "position", default: 0, null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "reset_password_token"
    t.datetime "reset_password_token_expires_at"
    t.datetime "reset_password_email_sent_at"
    t.integer "access_count_to_reset_password_page", default: 0
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token"
  end

  add_foreign_key "first_answers", "first_questions"
  add_foreign_key "lesson_answers", "lesson_questions"
  add_foreign_key "recovery_answers", "recovery_questions"
  add_foreign_key "second_answers", "second_questions"
  add_foreign_key "third_answers", "third_questions"
end
