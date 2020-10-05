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

ActiveRecord::Schema.define(version: 2020_09_29_160015) do

  create_table "councilmembers", force: :cascade do |t|
    t.string "name"
    t.string "phone_number"
    t.string "email"
    t.string "twitter"
    t.string "facebook"
    t.string "instagram"
    t.string "position"
    t.integer "jurisdiction_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "jurisdictions", force: :cascade do |t|
    t.string "name"
    t.string "state"
    t.string "city_county"
    t.string "website_main"
    t.string "website_meeting"
    t.string "website_meeting_cc"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "meetings", force: :cascade do |t|
    t.string "date"
    t.string "time"
    t.string "location"
    t.string "agenda_link"
    t.string "minutes_link"
    t.string "livestream_link"
    t.integer "jurisdiction_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "councilmembers", "jurisdictions"
  add_foreign_key "meetings", "jurisdictions"
end
