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

ActiveRecord::Schema.define(version: 20161218223113) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "places", force: :cascade do |t|
    t.string   "name"
    t.string   "image"
    t.float    "lat"
    t.float    "lng"
    t.string   "google_place_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "address"
  end

  create_table "stops", force: :cascade do |t|
    t.string   "purpose"
    t.integer  "position"
    t.string   "image"
    t.boolean  "public"
    t.integer  "user_id"
    t.integer  "place_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "walk_id"
    t.index ["place_id"], name: "index_stops_on_place_id", using: :btree
    t.index ["user_id"], name: "index_stops_on_user_id", using: :btree
    t.index ["walk_id"], name: "index_stops_on_walk_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "image"
  end

  create_table "walks", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.date     "date"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "user_id"
    t.index ["user_id"], name: "index_walks_on_user_id", using: :btree
  end

  add_foreign_key "stops", "places"
  add_foreign_key "stops", "users"
  add_foreign_key "stops", "walks"
  add_foreign_key "walks", "users"
end
