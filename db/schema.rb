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

ActiveRecord::Schema.define(version: 2023_08_16_091417) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bosses", force: :cascade do |t|
    t.string "name_fr"
    t.string "location_fr"
    t.string "url_fr"
    t.string "name_en"
    t.string "location_en"
    t.string "url_en"
    t.string "name_es"
    t.string "location_es"
    t.string "url_es"
    t.string "name_pt"
    t.string "location_pt"
    t.string "url_pt"
    t.integer "first_encounter"
    t.integer "second_encounter"
    t.integer "third_encounter"
    t.integer "first_modulox"
    t.integer "second_modulox"
    t.integer "third_modulox"
    t.bigint "loop_pattern_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["loop_pattern_id"], name: "index_bosses_on_loop_pattern_id"
  end

  create_table "fields", force: :cascade do |t|
    t.string "name"
    t.string "value"
    t.boolean "inline"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "level_ranges", force: :cascade do |t|
    t.string "range"
    t.integer "number_of_bosses"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "loop_patterns", force: :cascade do |t|
    t.bigint "level_range_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["level_range_id"], name: "index_loop_patterns_on_level_range_id"
  end

  create_table "messages", force: :cascade do |t|
    t.string "content"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "bosses", "loop_patterns"
  add_foreign_key "loop_patterns", "level_ranges"
end
