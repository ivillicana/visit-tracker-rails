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

ActiveRecord::Schema.define(version: 2018_10_04_200522) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "people", force: :cascade do |t|
    t.string "name"
    t.string "house_number"
    t.string "apt"
    t.string "street"
    t.string "city"
    t.string "state"
    t.string "country"
    t.text "notes"
    t.string "email"
    t.string "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_people_on_user_id"
  end

  create_table "publications", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "name"
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "provider"
    t.string "uid"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "visit_publications", force: :cascade do |t|
    t.bigint "visits_id"
    t.bigint "publications_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["publications_id"], name: "index_visit_publications_on_publications_id"
    t.index ["visits_id"], name: "index_visit_publications_on_visits_id"
  end

  create_table "visits", force: :cascade do |t|
    t.text "notes"
    t.date "visit_date"
    t.time "visit_time"
    t.string "visit_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "person_id"
    t.index ["person_id"], name: "index_visits_on_person_id"
  end

  add_foreign_key "people", "users"
  add_foreign_key "visit_publications", "publications", column: "publications_id"
  add_foreign_key "visit_publications", "visits", column: "visits_id"
  add_foreign_key "visits", "people"
end
