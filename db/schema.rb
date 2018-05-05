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

ActiveRecord::Schema.define(version: 20180505224937) do

  create_table "bank_data", force: :cascade do |t|
    t.integer "user_id"
    t.string "cardHolderName"
    t.date "expirationDate"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_bank_data_on_user_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "fund_promises", force: :cascade do |t|
    t.integer "fund_id"
    t.integer "promise_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["fund_id"], name: "index_fund_promises_on_fund_id"
    t.index ["promise_id"], name: "index_fund_promises_on_promise_id"
  end

  create_table "funds", force: :cascade do |t|
    t.integer "product_id"
    t.integer "user_id"
    t.decimal "amountFunded"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_funds_on_product_id"
    t.index ["user_id"], name: "index_funds_on_user_id"
  end

  create_table "products", force: :cascade do |t|
    t.integer "user_id"
    t.integer "category_id"
    t.string "title"
    t.string "description"
    t.string "goal"
    t.string "decimal"
    t.date "finishDate"
    t.string "mainVideo"
    t.string "mainImage"
    t.integer "rating"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_products_on_category_id"
    t.index ["user_id"], name: "index_products_on_user_id"
  end

  create_table "promises", force: :cascade do |t|
    t.integer "product_id"
    t.string "description"
    t.date "deliveryDate"
    t.decimal "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_promises_on_product_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.string "lastName"
    t.boolean "isAdmin"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "wish_lists", force: :cascade do |t|
    t.integer "product_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_wish_lists_on_product_id"
    t.index ["user_id"], name: "index_wish_lists_on_user_id"
  end

end
