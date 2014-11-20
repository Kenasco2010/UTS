# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20141117001901) do

  create_table "bills", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "companies", force: true do |t|
    t.string   "name"
    t.text     "address"
    t.integer  "contact"
    t.string   "logo"
    t.integer  "bill_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "companies", ["bill_id"], name: "index_companies_on_bill_id"

  create_table "payments", force: true do |t|
    t.string   "bill_status"
    t.decimal  "amount_due"
    t.decimal  "amount_paid"
    t.decimal  "balance"
    t.date     "date_of_payment"
    t.date     "next_payment_date"
    t.text     "comment"
    t.string   "paid_by"
    t.integer  "bill_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "payments", ["bill_id"], name: "index_payments_on_bill_id"

end
