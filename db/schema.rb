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

ActiveRecord::Schema.define(version: 2021_03_29_182233) do

  create_table "ballparks", force: :cascade do |t|
    t.string "location"
    t.string "home_team"
    t.string "name"
    t.string "year_opened"
    t.string "capacity"
    t.string "nickname"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "image"
  end

  create_table "user_ballparks", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "ballpark_id", null: false
    t.integer "overall_experience"
    t.integer "concession_rating"
    t.integer "beauty_rating"
    t.integer "overall_price_rating"
    t.integer "crowd_rating"
    t.string "comments"
    t.boolean "visited"
    t.boolean "wishlist"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["ballpark_id"], name: "index_user_ballparks_on_ballpark_id"
    t.index ["user_id"], name: "index_user_ballparks_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "favorite_team"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "user_ballparks", "ballparks"
  add_foreign_key "user_ballparks", "users"
end
