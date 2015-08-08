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

ActiveRecord::Schema.define(version: 20150808071747) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "attendances", force: :cascade do |t|
    t.string   "month"
    t.string   "subject"
    t.string   "status"
    t.integer  "student_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "attendances", ["student_id"], name: "index_attendances_on_student_id", using: :btree

  create_table "students", force: :cascade do |t|
    t.string   "student_name"
    t.string   "father_name"
    t.integer  "rollnumber"
    t.string   "course"
    t.string   "semester"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "studies", force: :cascade do |t|
    t.integer  "subject_id"
    t.integer  "student_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "studies", ["student_id"], name: "index_studies_on_student_id", using: :btree
  add_index "studies", ["subject_id"], name: "index_studies_on_subject_id", using: :btree

  create_table "subjects", force: :cascade do |t|
    t.string   "subject_code"
    t.string   "subject_title"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "teachers", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teaches", force: :cascade do |t|
    t.integer  "teacher_id"
    t.integer  "subject_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "teaches", ["subject_id"], name: "index_teaches_on_subject_id", using: :btree
  add_index "teaches", ["teacher_id"], name: "index_teaches_on_teacher_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "attendances", "students"
  add_foreign_key "studies", "students"
  add_foreign_key "studies", "subjects"
  add_foreign_key "teaches", "subjects"
  add_foreign_key "teaches", "teachers"
end
