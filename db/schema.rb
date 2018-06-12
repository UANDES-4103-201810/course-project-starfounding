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

ActiveRecord::Schema.define(version: 2018_06_12_211926) do

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

  create_table "fund_promise_belongs", force: :cascade do |t|
    t.integer "promises_id"
    t.integer "user_project_fund_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["promises_id"], name: "index_fund_promise_belongs_on_promises_id"
    t.index ["user_project_fund_id"], name: "index_fund_promise_belongs_on_user_project_fund_id"
  end

  create_table "funds", force: :cascade do |t|
    t.integer "project_id"
    t.integer "user_id"
    t.float "amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["project_id"], name: "index_funds_on_project_id"
    t.index ["user_id"], name: "index_funds_on_user_id"
  end

  create_table "projects", force: :cascade do |t|
    t.integer "category_id"
    t.integer "user_id"
    t.string "title"
    t.string "description"
    t.float "goal"
    t.datetime "finishDate"
    t.string "mainVideo"
    t.string "mainImage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float "rating"
    t.string "image_file_name"
    t.string "image_content_type"
    t.integer "image_file_size"
    t.datetime "image_updated_at"
    t.index ["category_id"], name: "index_projects_on_category_id"
    t.index ["user_id"], name: "index_projects_on_user_id"
  end

  create_table "promises", force: :cascade do |t|
    t.integer "project_id"
    t.string "description"
    t.date "deliveryDate"
    t.float "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["project_id"], name: "index_promises_on_project_id"
  end

  create_table "user_project_funds", force: :cascade do |t|
    t.integer "user_id"
    t.integer "project_id"
    t.float "amountFunded"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["project_id"], name: "index_user_project_funds_on_project_id"
    t.index ["user_id"], name: "index_user_project_funds_on_user_id"
  end

  create_table "user_project_wishlists", force: :cascade do |t|
    t.integer "project_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["project_id"], name: "index_user_project_wishlists_on_project_id"
    t.index ["user_id"], name: "index_user_project_wishlists_on_user_id"
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
    t.string "first_name"
    t.string "last_name"
    t.boolean "isAdmin"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "avatar_file_name"
    t.string "avatar_content_type"
    t.integer "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.string "provider"
    t.string "uid"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
