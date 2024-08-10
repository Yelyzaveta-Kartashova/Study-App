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

ActiveRecord::Schema[7.1].define(version: 4) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "course_sections", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.bigint "subject_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["subject_id"], name: "index_course_sections_on_subject_id"
  end

  create_table "sections", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.bigint "subject_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["subject_id"], name: "index_sections_on_subject_id"
  end

  create_table "subjects", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.bigint "topic_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["topic_id"], name: "index_subjects_on_topic_id"
  end

  create_table "topics", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "course_sections", "subjects"
  add_foreign_key "sections", "subjects"
  add_foreign_key "subjects", "topics"
end