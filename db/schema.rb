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

ActiveRecord::Schema.define(version: 20171119133038) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "contacts", force: :cascade do |t|
    t.string "name", null: false
    t.string "phone", null: false
    t.string "address"
    t.string "tel"
    t.string "title"
    t.text "note"
    t.bigint "customer_id"
    t.bigint "factory_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customer_id"], name: "index_contacts_on_customer_id"
    t.index ["factory_id"], name: "index_contacts_on_factory_id"
    t.index ["name"], name: "index_contacts_on_name", unique: true
    t.index ["phone"], name: "index_contacts_on_phone", unique: true
  end

  create_table "customers", force: :cascade do |t|
    t.string "name", null: false
    t.string "address", null: false
    t.integer "payment_term", default: 0
    t.text "note"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["address"], name: "index_customers_on_address", unique: true
    t.index ["name"], name: "index_customers_on_name", unique: true
  end

  create_table "factories", force: :cascade do |t|
    t.string "name", null: false
    t.string "address", null: false
    t.string "skill", null: false
    t.text "note"
    t.integer "procedures_count", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["address"], name: "index_factories_on_address", unique: true
    t.index ["name"], name: "index_factories_on_name", unique: true
  end

  create_table "manufacturing_records", force: :cascade do |t|
    t.string "token"
    t.bigint "workpiece_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["token"], name: "index_manufacturing_records_on_token", unique: true
    t.index ["workpiece_id"], name: "index_manufacturing_records_on_workpiece_id"
  end

  create_table "workpieces", force: :cascade do |t|
    t.string "name", null: false
    t.string "picnum", null: false
    t.decimal "price", precision: 12, scale: 3
    t.string "spec"
    t.text "note"
    t.bigint "customer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customer_id"], name: "index_workpieces_on_customer_id"
    t.index ["picnum"], name: "index_workpieces_on_picnum", unique: true
  end

  add_foreign_key "manufacturing_records", "workpieces"
  add_foreign_key "workpieces", "customers"
end
