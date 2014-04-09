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

ActiveRecord::Schema.define(version: 20140408170855) do

  create_table "addresses", force: true do |t|
    t.integer  "contact_id"
    t.string   "street"
    t.string   "barangay"
    t.string   "city"
    t.string   "postal_code"
    t.string   "province"
    t.string   "country"
    t.string   "description"
    t.string   "ownership_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "addresses", ["contact_id"], name: "index_addresses_on_contact_id", using: :btree

  create_table "beneficiaries", force: true do |t|
    t.integer  "member_id"
    t.integer  "contact_id"
    t.string   "relationship"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "beneficiaries", ["contact_id"], name: "index_beneficiaries_on_contact_id", using: :btree
  add_index "beneficiaries", ["member_id"], name: "index_beneficiaries_on_member_id", using: :btree

  create_table "contacts", force: true do |t|
    t.integer  "member_id"
    t.string   "last_name"
    t.string   "first_name"
    t.string   "middle_name"
    t.date     "birth_date"
    t.string   "birth_place"
    t.string   "gender"
    t.string   "civil_status"
    t.string   "education_level"
    t.string   "telephone"
    t.string   "mobile_phone"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "contacts", ["member_id"], name: "index_contacts_on_member_id", using: :btree

end
