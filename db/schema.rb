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

ActiveRecord::Schema.define(version: 2018_12_06_170157) do

  create_table "admins", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
  end

  create_table "business_categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "companies", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "company_name"
    t.string "category"
    t.string "reg_no"
    t.string "kra_pin"
    t.string "ifmis_no"
    t.string "company_email"
    t.string "first_name"
    t.string "last_name"
    t.string "national_id"
    t.string "phone_no"
    t.index ["email"], name: "index_companies_on_email", unique: true
    t.index ["reset_password_token"], name: "index_companies_on_reset_password_token", unique: true
  end

  create_table "tender_applications", force: :cascade do |t|
    t.decimal "value", precision: 8, scale: 2
    t.string "bank"
    t.string "branch"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "company_id"
    t.integer "tender_id"
    t.boolean "status", default: false
    t.boolean "winner", default: false
    t.text "comments"
    t.index ["company_id"], name: "index_tender_applications_on_company_id"
    t.index ["tender_id"], name: "index_tender_applications_on_tender_id"
  end

  create_table "tenders", force: :cascade do |t|
    t.string "name"
    t.string "ref_no"
    t.date "pub_date"
    t.date "deadline"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "business_category_id"
    t.boolean "awarded", default: false
    t.index ["business_category_id"], name: "index_tenders_on_business_category_id"
  end

end
