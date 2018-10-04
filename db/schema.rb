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

ActiveRecord::Schema.define(version: 2018_10_04_171128) do

  create_table "amigo_reviews", force: :cascade do |t|
    t.integer "user_id"
    t.integer "amigo_id"
    t.integer "rating"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "workout_id"
  end

  create_table "gym_reviews", force: :cascade do |t|
    t.integer "user_id"
    t.integer "gym_id"
    t.integer "rating"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "workout_id"
  end

  create_table "gyms", force: :cascade do |t|
    t.string "name"
    t.text "hours"
    t.string "address"
    t.text "rates"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "city"
    t.string "zipcode"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "city"
    t.string "experience"
    t.text "goals"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
  end

  create_table "workouts", force: :cascade do |t|
    t.string "start_time"
    t.string "end_time"
    t.text "description"
    t.integer "gym_id"
    t.integer "user_id"
    t.integer "amigo_id"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "date"
  end

end
