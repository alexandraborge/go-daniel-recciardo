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

ActiveRecord::Schema[7.2].define(version: 2024_09_23_024910) do
  create_table "races", force: :cascade do |t|
    t.integer "circuit_key"
    t.string "circuit_short_name"
    t.integer "country_key"
    t.string "country_name"
    t.string "location"
    t.datetime "start_date"
    t.integer "meeting_key"
    t.string "meeting_name"
    t.string "meeting_official_name"
    t.integer "year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end
end
