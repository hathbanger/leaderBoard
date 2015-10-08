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

ActiveRecord::Schema.define(version: 20151008005247) do

  create_table "athletes", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "athletes_events", id: false, force: :cascade do |t|
    t.integer "athlete_id", null: false
    t.integer "event_id",   null: false
  end

  add_index "athletes_events", ["athlete_id", "event_id"], name: "index_athletes_events_on_athlete_id_and_event_id", unique: true

  create_table "events", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "runs", force: :cascade do |t|
    t.float    "score"
    t.integer  "athlete_id"
    t.integer  "event_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "runs", ["athlete_id"], name: "index_runs_on_athlete_id"
  add_index "runs", ["event_id"], name: "index_runs_on_event_id"

end
