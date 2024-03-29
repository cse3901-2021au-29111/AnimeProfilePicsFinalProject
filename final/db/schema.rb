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

ActiveRecord::Schema.define(version: 2021_12_14_210917) do

  create_table "evaluations", force: :cascade do |t|
    t.integer "evaluator_id"
    t.integer "evaluated_id"
    t.string "comment"
    t.integer "rating"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "lab_id", null: false
    t.index ["lab_id"], name: "index_evaluations_on_lab_id"
  end

  create_table "labs", force: :cascade do |t|
    t.string "lab_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.string "part_number"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "rosters", force: :cascade do |t|
    t.integer "team_id"
    t.integer "student_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["student_id"], name: "index_rosters_on_student_id"
    t.index ["team_id"], name: "index_rosters_on_team_id"
  end

  create_table "sections", force: :cascade do |t|
    t.integer "sectionNum"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "sessions", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "students", force: :cascade do |t|
    t.string "fname"
    t.string "lname"
    t.integer "buckId"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "nick"
    t.boolean "is_admin"
    t.string "email"
    t.string "password_digest"
    t.integer "section_id"
    t.index ["email"], name: "index_students_on_email", unique: true
    t.index ["section_id"], name: "index_students_on_section_id"
  end

  create_table "team_labs", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "team_id", null: false
    t.integer "lab_id", null: false
    t.index ["lab_id"], name: "index_team_labs_on_lab_id"
    t.index ["team_id"], name: "index_team_labs_on_team_id"
  end

  create_table "teams", force: :cascade do |t|
    t.integer "classId"
    t.integer "adminId"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "section_id"
    t.string "tName"
    t.index ["section_id"], name: "index_teams_on_section_id"
  end

end
