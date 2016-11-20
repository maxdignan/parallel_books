# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20161120044703) do

  create_table "books", force: :cascade do |t|
    t.string   "title"
    t.string   "img"
    t.string   "pdf"
    t.float    "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "author"
    t.string   "isbn"
  end

  create_table "books_users", force: :cascade do |t|
    t.integer "user_id"
    t.integer "book_id"
  end

  create_table "checkouts", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "book_id"
    t.integer  "user_id"
    t.integer  "key_id"
  end

  add_index "checkouts", ["book_id"], name: "index_checkouts_on_book_id"
  add_index "checkouts", ["key_id"], name: "index_checkouts_on_key_id"
  add_index "checkouts", ["user_id"], name: "index_checkouts_on_user_id"

  create_table "keys", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "book_id"
  end

  add_index "keys", ["book_id"], name: "index_keys_on_book_id"

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
