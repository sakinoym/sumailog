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

ActiveRecord::Schema.define(version: 2022_08_30_091430) do

  create_table "conditions", charset: "utf8mb4", force: :cascade do |t|
    t.integer "budget"
    t.string "area"
    t.string "walking_distans_from_station"
    t.string "exclusive_area"
    t.string "floor_plan"
    t.string "age_of_a_building"
    t.string "detail_1"
    t.text "others"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "detail_2"
    t.string "detail_3"
    t.index ["user_id"], name: "index_conditions_on_user_id"
  end

  create_table "logs", charset: "utf8mb4", force: :cascade do |t|
    t.string "content"
    t.bigint "property_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["property_id"], name: "index_logs_on_property_id"
  end

  create_table "properties", charset: "utf8mb4", force: :cascade do |t|
    t.string "name"
    t.integer "price"
    t.string "address"
    t.string "company"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "company_contact_info"
    t.text "property_url"
    t.index ["user_id"], name: "index_properties_on_user_id"
  end

  create_table "users", charset: "utf8mb4", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "conditions", "users"
  add_foreign_key "logs", "properties"
  add_foreign_key "properties", "users"
end
