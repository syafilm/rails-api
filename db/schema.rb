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

ActiveRecord::Schema.define(version: 2021_10_22_155736) do

  create_table "guests", charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "first_name", default: "", null: false
    t.string "last_name", default: "", null: false
    t.text "phone"
    t.string "email", default: "", null: false
    t.integer "status", default: 0
    t.text "localized_description"
    t.integer "number_of_adults"
    t.integer "number_of_children"
    t.integer "number_of_infants"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_guests_on_email", unique: true
  end

  create_table "reservations", charset: "utf8mb4", collation: "utf8mb4_bin", force: :cascade do |t|
    t.string "code", default: "", null: false
    t.datetime "start_date"
    t.datetime "end_date"
    t.decimal "expected_payout_amount", precision: 8, scale: 2
    t.decimal "listing_security_price_accurate", precision: 8, scale: 2
    t.string "host_currency", default: "", null: false
    t.integer "nights"
    t.decimal "total_paid_amount_accurate", precision: 8, scale: 2
    t.bigint "guest_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["code"], name: "index_reservations_on_code", unique: true
    t.index ["guest_id"], name: "index_reservations_on_guest_id"
  end

end
