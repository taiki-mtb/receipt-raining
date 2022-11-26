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

ActiveRecord::Schema[7.0].define(version: 2022_11_26_134909) do
  create_table "customers", force: :cascade do |t|
    t.integer "tcard_number"
    t.integer "point"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "product_categories", force: :cascade do |t|
    t.string "name"
    t.integer "code"
    t.integer "tax_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.integer "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "product_category_id"
    t.index ["product_category_id"], name: "index_products_on_product_category_id"
  end

  create_table "receipt_products", force: :cascade do |t|
    t.integer "receipt_id", null: false
    t.integer "product_id", null: false
    t.integer "quantity"
    t.integer "discount_amount"
    t.integer "subtotal"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_receipt_products_on_product_id"
    t.index ["receipt_id"], name: "index_receipt_products_on_receipt_id"
  end

  create_table "receipts", force: :cascade do |t|
    t.integer "store_id", null: false
    t.integer "staff_id", null: false
    t.integer "register_id", null: false
    t.integer "customer_id", null: false
    t.integer "pay_type"
    t.integer "subtotal"
    t.integer "total_quantity"
    t.integer "total_amount"
    t.integer "tax_target_8"
    t.decimal "tax_amount_8"
    t.integer "tax_target_10"
    t.decimal "tax_amount_10"
    t.integer "total_discount_price"
    t.integer "credit_amount"
    t.integer "change"
    t.integer "point_target"
    t.integer "thistime_point"
    t.integer "use_point"
    t.text "memo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customer_id"], name: "index_receipts_on_customer_id"
    t.index ["register_id"], name: "index_receipts_on_register_id"
    t.index ["staff_id"], name: "index_receipts_on_staff_id"
    t.index ["store_id"], name: "index_receipts_on_store_id"
  end

  create_table "registers", force: :cascade do |t|
    t.integer "store_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["store_id"], name: "index_registers_on_store_id"
  end

  create_table "staffs", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stores", force: :cascade do |t|
    t.string "name"
    t.integer "phone_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "products", "product_categories"
  add_foreign_key "receipt_products", "products"
  add_foreign_key "receipt_products", "receipts"
  add_foreign_key "receipts", "customers"
  add_foreign_key "receipts", "registers"
  add_foreign_key "receipts", "staffs"
  add_foreign_key "receipts", "stores"
  add_foreign_key "registers", "stores"
end
