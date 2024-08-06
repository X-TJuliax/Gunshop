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

ActiveRecord::Schema.define(version: 2024_08_06_063016) do

  create_table "clients", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "email", null: false
    t.string "first_name", null: false
    t.string "last_name", null: false
    t.date "dob", null: false
    t.bigint "tfn", null: false
    t.bigint "abn"
    t.string "occupation"
    t.string "street_address", null: false
    t.string "city", null: false
    t.string "state", null: false
    t.integer "postcode", null: false
    t.string "mobile"
    t.string "work"
    t.string "home"
    t.string "spouse"
    t.date "spouse_dob"
    t.string "dependant1"
    t.date "dependant1_dob"
    t.string "dependant2"
    t.date "dependant2_dob"
    t.string "dependant3"
    t.date "dependant3_dob"
    t.string "dependant4"
    t.date "dependant4_dob"
    t.string "dependant5"
    t.date "dependant5_dob"
    t.string "bank_name"
    t.integer "bank_acc"
    t.integer "bank_bsb"
    t.string "ato_correspondence_preference"
    t.boolean "my_gov_account"
    t.string "accountant"
    t.integer "accountant_user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "title"
    t.string "gender"
    t.string "middle_name"
    t.string "residency_status"
    t.string "postal_country"
    t.integer "postal_postcode"
    t.boolean "child_support"
    t.string "referrer"
    t.text "additional_info"
    t.boolean "representative"
    t.string "representative_name"
    t.date "representative_dob"
    t.string "representative_relationship"
    t.text "signature"
    t.string "country"
    t.string "postal_street_address"
    t.string "postal_city"
    t.string "postal_state"
    t.string "dependants"
    t.integer "xero_client_id"
    t.string "xero_client_uuid"
    t.index ["email"], name: "index_clients_on_email", unique: true
  end

  create_table "products", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.decimal "price", precision: 10
    t.string "url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
