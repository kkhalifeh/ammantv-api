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

ActiveRecord::Schema[7.0].define(version: 2023_03_27_122805) do
  create_table "ad_bookings", force: :cascade do |t|
    t.string "name", limit: 255
    t.integer "order"
    t.integer "ad_id", null: false
    t.integer "user_id", null: false
    t.integer "ad_break_id", null: false
    t.date "scheduled_start_date"
    t.date "scheduled_end_date"
    t.string "scheduled_days", limit: 255
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ad_break_id"], name: "index_ad_bookings_on_ad_break_id"
    t.index ["ad_id"], name: "index_ad_bookings_on_ad_id"
    t.index ["user_id"], name: "index_ad_bookings_on_user_id"
  end

  create_table "ad_breaks", force: :cascade do |t|
    t.string "name", limit: 255
    t.integer "duration"
    t.integer "program_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.time "start_time"
    t.index ["program_id"], name: "index_ad_breaks_on_program_id"
  end

  create_table "ads", force: :cascade do |t|
    t.string "name", limit: 255
    t.string "adtype", limit: 255
    t.string "attachment", limit: 255
    t.integer "duration"
    t.integer "advertiser_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["advertiser_id"], name: "index_ads_on_advertiser_id"
    t.index ["name"], name: "index_ads_on_name", unique: true
  end

  create_table "advertisers", force: :cascade do |t|
    t.string "name", limit: 255
    t.string "city", limit: 255
    t.string "country", limit: 255
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_advertisers_on_name", unique: true
  end

  create_table "contacts", force: :cascade do |t|
    t.string "first_name", limit: 255
    t.string "last_name", limit: 255
    t.string "mobile_number", limit: 255
    t.string "title", limit: 255
    t.integer "advertiser_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["advertiser_id"], name: "index_contacts_on_advertiser_id"
  end

  create_table "programs", force: :cascade do |t|
    t.string "name", limit: 255
    t.date "scheduled_start_date"
    t.date "scheduled_end_date"
    t.time "duration"
    t.time "start_time"
    t.time "end_time"
    t.string "scheduled_days", limit: 255
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_programs_on_name", unique: true
  end

  create_table "users", force: :cascade do |t|
    t.string "username", limit: 255
    t.string "password", limit: 255
    t.string "email", limit: 255
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["username"], name: "index_users_on_username", unique: true
  end

  add_foreign_key "ad_bookings", "ad_breaks"
  add_foreign_key "ad_bookings", "ads"
  add_foreign_key "ad_bookings", "users"
  add_foreign_key "ad_breaks", "programs"
  add_foreign_key "ads", "advertisers"
  add_foreign_key "contacts", "advertisers"
end
