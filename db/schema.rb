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

ActiveRecord::Schema.define(version: 2020_06_02_100338) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "applications", force: :cascade do |t|
    t.text "content"
    t.boolean "sent", default: false
    t.bigint "user_id", null: false
    t.bigint "startup_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["startup_id"], name: "index_applications_on_startup_id"
    t.index ["user_id"], name: "index_applications_on_user_id"
  end

  create_table "favorites", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "startup_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["startup_id"], name: "index_favorites_on_startup_id"
    t.index ["user_id"], name: "index_favorites_on_user_id"
  end

  create_table "sectors", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "startup_sectors", force: :cascade do |t|
    t.bigint "sector_id", null: false
    t.bigint "startup_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["sector_id"], name: "index_startup_sectors_on_sector_id"
    t.index ["startup_id"], name: "index_startup_sectors_on_startup_id"
  end

  create_table "startups", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "address"
    t.string "website"
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "user_sectors", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "sector_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["sector_id"], name: "index_user_sectors_on_sector_id"
    t.index ["user_id"], name: "index_user_sectors_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "first_name"
    t.string "last_name"
    t.string "address"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "applications", "startups"
  add_foreign_key "applications", "users"
  add_foreign_key "favorites", "startups"
  add_foreign_key "favorites", "users"
  add_foreign_key "startup_sectors", "sectors"
  add_foreign_key "startup_sectors", "startups"
  add_foreign_key "user_sectors", "sectors"
  add_foreign_key "user_sectors", "users"
end
