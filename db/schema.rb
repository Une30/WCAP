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

ActiveRecord::Schema.define(version: 20141017122956) do

  create_table "abusings", force: true do |t|
    t.integer  "drug_id"
    t.integer  "first_use"
    t.integer  "total_use"
    t.integer  "using_days"
    t.integer  "use_code"
    t.integer  "patient_id"
    t.text     "comments"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "balloons", force: true do |t|
    t.integer  "bart_id"
    t.integer  "pumps"
    t.integer  "explosion"
    t.integer  "response_time"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "barts", force: true do |t|
    t.integer  "task_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "clinics", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ddtanswers", force: true do |t|
    t.integer  "q1"
    t.integer  "q2"
    t.integer  "q3"
    t.integer  "q4"
    t.integer  "q5"
    t.integer  "q6"
    t.integer  "q7"
    t.integer  "q8"
    t.integer  "q9"
    t.integer  "q10"
    t.integer  "q11"
    t.integer  "q12"
    t.integer  "q13"
    t.integer  "q14"
    t.integer  "q15"
    t.integer  "q16"
    t.integer  "q17"
    t.integer  "q18"
    t.integer  "q19"
    t.integer  "q20"
    t.integer  "q21"
    t.integer  "q22"
    t.integer  "q23"
    t.integer  "q24"
    t.integer  "q25"
    t.integer  "task_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ddtquestions", force: true do |t|
    t.integer  "question_type"
    t.string   "value1"
    t.string   "value2"
    t.string   "value3"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "drugs", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "examiners", force: true do |t|
    t.integer  "clinic_id"
    t.integer  "user_id"
    t.boolean  "confirmation"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "gonogos", force: true do |t|
    t.integer  "task_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "patients", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "file_number"
    t.integer  "private_code"
    t.boolean  "gender"
    t.datetime "year_of_birth"
    t.datetime "interview_date"
    t.string   "marital_status"
    t.integer  "educational_year"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "profiles", force: true do |t|
    t.integer  "user_id"
    t.string   "first_name"
    t.string   "last_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rectangles", force: true do |t|
    t.integer  "gonogo_id"
    t.integer  "state"
    t.integer  "is_clicked"
    t.integer  "display_time"
    t.integer  "response_time"
    t.integer  "reaction_time"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "regs", force: true do |t|
    t.integer  "clinic_id"
    t.integer  "user_id"
    t.integer  "patient_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "supervisors", force: true do |t|
    t.integer  "user_id"
    t.integer  "clinic_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tasks", force: true do |t|
    t.integer  "user_id"
    t.integer  "patient_id"
    t.integer  "clinic_id"
    t.boolean  "confirmed"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.boolean  "admin"
    t.boolean  "manager"
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
