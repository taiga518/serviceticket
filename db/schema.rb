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

ActiveRecord::Schema.define(version: 20171210035109) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookings", force: :cascade do |t|
    t.string "to_name"
    t.integer "gift_type"
    t.text "message"
    t.string "delivery_method"
    t.string "to_email"
    t.string "from_name"
    t.string "from_email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "item_id"
    t.string "serial"
    t.boolean "validation", default: false
    t.index ["item_id"], name: "index_bookings_on_item_id"
  end

  create_table "comments", force: :cascade do |t|
    t.text "about"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "item_id"
    t.index ["item_id"], name: "index_comments_on_item_id"
  end

  create_table "items", force: :cascade do |t|
    t.string "title"
    t.text "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "item_id"
    t.integer "price", default: 3
    t.integer "reputation", default: 3
    t.string "location"
    t.string "image"
    t.bigint "user_id"
    t.index ["item_id"], name: "index_items_on_item_id"
    t.index ["user_id"], name: "index_items_on_user_id"
  end

  create_table "user_items", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
    t.bigint "item_id"
    t.string "email"
    t.string "number"
    t.index ["item_id"], name: "index_users_on_item_id"
  end

  add_foreign_key "bookings", "items"
  add_foreign_key "comments", "items"
  add_foreign_key "items", "items"
  add_foreign_key "items", "users"
  add_foreign_key "users", "items"
end
