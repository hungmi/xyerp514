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

ActiveRecord::Schema.define(version: 20171119120517) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "contacts", force: :cascade do |t|
    t.string "name", null: false
    t.bigint "customer_id"
    t.bigint "factory_id"
    t.string "address"
    t.string "tel"
    t.string "phone"
    t.string "title"
    t.text "note"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customer_id"], name: "index_contacts_on_customer_id"
    t.index ["factory_id"], name: "index_contacts_on_factory_id"
  end

  create_table "customers", force: :cascade do |t|
    t.string "name", null: false
    t.string "address", null: false
    t.integer "payment_term", default: 0
    t.text "note"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "factories", force: :cascade do |t|
    t.string "name", null: false
    t.string "address", null: false
    t.string "skill", null: false
    t.text "note"
    t.integer "procedures_count", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "workpieces", force: :cascade do |t|
    t.string "name", null: false
    t.bigint "customer_id"
    t.decimal "price", precision: 12, scale: 3
    t.string "picnum", null: false
    t.string "spec"
    t.text "note"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customer_id"], name: "index_workpieces_on_customer_id"
  end

  add_foreign_key "workpieces", "customers"
end
