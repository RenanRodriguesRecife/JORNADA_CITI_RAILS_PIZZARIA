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

ActiveRecord::Schema.define(version: 20160304032716) do

  create_table "companies", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "cnpj"
    t.string   "tel"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "password_digest"
  end

  create_table "offers", force: :cascade do |t|
    t.string   "tittle"
    t.float    "value"
    t.integer  "company_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "offers", ["company_id"], name: "index_offers_on_company_id"

  create_table "offers_users", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "offer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "offers_users", ["offer_id", "user_id"], name: "index_offers_users_on_offer_id_and_user_id"

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "tel"
    t.string   "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
