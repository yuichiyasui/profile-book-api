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

ActiveRecord::Schema.define(version: 2022_01_10_023937) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["name"], name: "index_categories_on_name", unique: true
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

  create_table "member_specialities", force: :cascade do |t|
    t.bigint "member_id", null: false
    t.bigint "speciality_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["member_id"], name: "index_member_specialities_on_member_id"
    t.index ["speciality_id"], name: "index_member_specialities_on_speciality_id"
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

  create_table "temporary_users", force: :cascade do |t|
    t.string "email", null: false
    t.string "password_digest", null: false
    t.string "uuid", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_temporary_users_on_email", unique: true
    t.index ["uuid"], name: "index_temporary_users_on_uuid", unique: true
  end

  create_table "users", force: :cascade do |t|
    t.string "provider", default: "email", null: false
    t.string "uid", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.boolean "allow_password_change", default: false
    t.datetime "remember_created_at"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.string "name"
    t.string "nickname"
    t.string "image"
    t.string "email"
    t.json "tokens"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["uid", "provider"], name: "index_users_on_uid_and_provider", unique: true
  end

  add_foreign_key "hobbies", "categories"
  add_foreign_key "member_hobbies", "hobbies"
  add_foreign_key "member_hobbies", "members"
  add_foreign_key "member_specialities", "members"
  add_foreign_key "member_specialities", "specialities"
  add_foreign_key "members", "prefectures", column: "home_prefecture_id"
  add_foreign_key "members", "prefectures", column: "residence_prefecture_id"
  add_foreign_key "specialities", "categories"
end
