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

ActiveRecord::Schema.define(version: 20160519075208) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", force: :cascade do |t|
    t.string   "street_address"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.string   "zipcode"
    t.integer  "client_id"
    t.integer  "spouse_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "addresses", ["client_id"], name: "index_addresses_on_client_id", using: :btree
  add_index "addresses", ["spouse_id"], name: "index_addresses_on_spouse_id", using: :btree

  create_table "clients", force: :cascade do |t|
    t.string   "name"
    t.string   "work_phone"
    t.string   "home_phone"
    t.string   "fax"
    t.string   "email"
    t.integer  "plan_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "clients", ["plan_id"], name: "index_clients_on_plan_id", using: :btree

  create_table "plans", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "spouses", force: :cascade do |t|
    t.string   "name"
    t.string   "work_phone"
    t.string   "home_phone"
    t.string   "fax"
    t.string   "email"
    t.integer  "client_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "spouses", ["client_id"], name: "index_spouses_on_client_id", using: :btree

  add_foreign_key "addresses", "clients"
  add_foreign_key "addresses", "spouses"
  add_foreign_key "clients", "plans"
  add_foreign_key "spouses", "clients"
end
