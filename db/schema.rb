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

ActiveRecord::Schema.define(version: 2021_11_07_100807) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "hobbies", force: :cascade do |t|
    t.string "name", null: false
    t.bigint "category_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["category_id"], name: "index_hobbies_on_category_id"
  end

  create_table "member_hobbies", force: :cascade do |t|
    t.bigint "member_id", null: false
    t.bigint "hobby_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["hobby_id"], name: "index_member_hobbies_on_hobby_id"
    t.index ["member_id"], name: "index_member_hobbies_on_member_id"
  end

  create_table "members", force: :cascade do |t|
    t.string "first_name", null: false
    t.string "first_name_hiragana", null: false
    t.string "last_name", null: false
    t.string "last_name_hiragana", null: false
    t.string "handle_name", null: false
    t.datetime "birthday", null: false
    t.text "comment", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "home_prefecture_id"
    t.bigint "residence_prefecture_id"
    t.index ["home_prefecture_id"], name: "index_members_on_home_prefecture_id"
    t.index ["residence_prefecture_id"], name: "index_members_on_residence_prefecture_id"
  end

  create_table "prefectures", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "specialities", force: :cascade do |t|
    t.string "name", null: false
    t.bigint "category_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["category_id"], name: "index_specialities_on_category_id"
  end

  add_foreign_key "hobbies", "categories"
  add_foreign_key "member_hobbies", "hobbies"
  add_foreign_key "member_hobbies", "members"
  add_foreign_key "members", "prefectures", column: "home_prefecture_id"
  add_foreign_key "members", "prefectures", column: "residence_prefecture_id"
  add_foreign_key "specialities", "categories"
end
