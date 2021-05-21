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

ActiveRecord::Schema.define(version: 2021_05_21_150518) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bosses", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "level_ranges", force: :cascade do |t|
    t.string "range"
    t.integer "number_of_bosses"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "loops", force: :cascade do |t|
    t.bigint "bosses_id", null: false
    t.bigint "level_ranges_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["bosses_id"], name: "index_loops_on_bosses_id"
    t.index ["level_ranges_id"], name: "index_loops_on_level_ranges_id"
  end

  add_foreign_key "loops", "bosses", column: "bosses_id"
  add_foreign_key "loops", "level_ranges", column: "level_ranges_id"
end
