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

ActiveRecord::Schema.define(version: 2018_06_12_204333) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cohorts", force: :cascade do |t|
    t.string "name"
    t.date "start"
    t.date "end"
    t.bigint "course_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_id"], name: "index_cohorts_on_course_id"
  end

  create_table "courses", force: :cascade do |t|
    t.string "name"
    t.integer "hours"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "fuckthis", force: :cascade do |t|
    t.bigint "courses_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["courses_id"], name: "index_fuckthis_on_courses_id"
  end

  create_table "instructors", force: :cascade do |t|
    t.string "f_name"
    t.string "l_name"
    t.integer "age"
    t.integer "salary"
    t.text "education"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "instructors_cohorts", force: :cascade do |t|
    t.bigint "instructor_id"
    t.bigint "cohort_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cohort_id"], name: "index_instructors_cohorts_on_cohort_id"
    t.index ["instructor_id"], name: "index_instructors_cohorts_on_instructor_id"
  end

  create_table "students", force: :cascade do |t|
    t.string "f_name"
    t.string "l_name"
    t.integer "age"
    t.integer "highes_grade"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "students_cohorts", force: :cascade do |t|
    t.bigint "student_id"
    t.bigint "cohort_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cohort_id"], name: "index_students_cohorts_on_cohort_id"
    t.index ["student_id"], name: "index_students_cohorts_on_student_id"
  end

  add_foreign_key "cohorts", "courses"
  add_foreign_key "fuckthis", "courses", column: "courses_id"
  add_foreign_key "instructors_cohorts", "cohorts"
  add_foreign_key "instructors_cohorts", "instructors"
  add_foreign_key "students_cohorts", "cohorts"
  add_foreign_key "students_cohorts", "students"
end
