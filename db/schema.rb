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

ActiveRecord::Schema.define(version: 20150623045341) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "attendee_skills", id: false, force: :cascade do |t|
    t.integer  "attendee_id"
    t.integer  "skill_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "attendee_skills", ["attendee_id"], name: "index_attendee_skills_on_attendee_id", using: :btree
  add_index "attendee_skills", ["skill_id"], name: "index_attendee_skills_on_skill_id", using: :btree

  create_table "attendees", force: :cascade do |t|
    t.string   "full_name"
    t.string   "email"
    t.integer  "age"
    t.string   "github"
    t.string   "linkedin"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "school_id"
  end

  add_index "attendees", ["school_id"], name: "index_attendees_on_school_id", using: :btree

  create_table "schools", force: :cascade do |t|
    t.string   "name"
    t.string   "hash"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "skills", force: :cascade do |t|
    t.string   "name"
    t.string   "hash"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "attendee_skills", "attendees"
  add_foreign_key "attendee_skills", "skills"
  add_foreign_key "attendees", "schools"
end
