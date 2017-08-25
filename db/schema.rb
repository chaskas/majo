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

ActiveRecord::Schema.define(version: 20170823165039) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "ingredients", force: :cascade do |t|
    t.string "name"
    t.bigint "unit_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["unit_id"], name: "index_ingredients_on_unit_id"
  end

  create_table "price_lists", force: :cascade do |t|
    t.integer "price"
    t.bigint "ingredient_id"
    t.bigint "supplier_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ingredient_id"], name: "index_price_lists_on_ingredient_id"
    t.index ["supplier_id"], name: "index_price_lists_on_supplier_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.integer "sale_price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "recipes", force: :cascade do |t|
    t.bigint "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float "quantity"
    t.bigint "ingredient_id"
    t.index ["ingredient_id"], name: "index_recipes_on_ingredient_id"
    t.index ["product_id"], name: "index_recipes_on_product_id"
  end

  create_table "suppliers", force: :cascade do |t|
    t.string "name"
    t.string "contact"
    t.string "phone"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "units", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "ingredients", "units"
  add_foreign_key "price_lists", "ingredients"
  add_foreign_key "price_lists", "suppliers"
  add_foreign_key "recipes", "ingredients"
  add_foreign_key "recipes", "products"
end
