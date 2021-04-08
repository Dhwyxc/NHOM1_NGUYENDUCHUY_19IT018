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

ActiveRecord::Schema.define(version: 2021_04_08_062343) do

  create_table "categories", charset: "utf8mb4", force: :cascade do |t|
    t.string "nameC"
    t.string "unit"
    t.string "note"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "products", charset: "utf8mb4", force: :cascade do |t|
    t.string "nameProduct"
    t.bigint "publisher_id", null: false
    t.string "specifi"
    t.bigint "category_id", null: false
    t.integer "price"
    t.bigint "provider_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["category_id"], name: "index_products_on_category_id"
    t.index ["provider_id"], name: "index_products_on_provider_id"
    t.index ["publisher_id"], name: "index_products_on_publisher_id"
  end

  create_table "providers", charset: "utf8mb4", force: :cascade do |t|
    t.string "nameProvider"
    t.string "add"
    t.string "phonenum"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "publishers", charset: "utf8mb4", force: :cascade do |t|
    t.string "nameP"
    t.string "nation"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "products", "categories"
  add_foreign_key "products", "providers"
  add_foreign_key "products", "publishers"
end
