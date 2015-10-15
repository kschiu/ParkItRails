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

ActiveRecord::Schema.define(version: 20151015233931) do

  create_table "cars", force: true do |t|
    t.integer  "purchase_id"
    t.string   "make"
    t.string   "model"
    t.string   "license"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "listings", force: true do |t|
    t.integer  "user_id"
    t.integer  "location_id"
    t.integer  "half_day"
    t.integer  "full_day"
    t.integer  "week"
    t.integer  "month"
    t.datetime "startDateTime"
    t.datetime "endDateTime"
    t.boolean  "active"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "locations", force: true do |t|
    t.integer  "user_id"
    t.string   "street_address"
    t.string   "city"
    t.string   "state"
    t.string   "zip_code"
    t.integer  "min_to_campus"
    t.integer  "num_cars"
    t.string   "car_type"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "photo"
  end

  create_table "payments", force: true do |t|
    t.integer  "user_id"
    t.string   "card_number"
    t.string   "expiration_date"
    t.string   "holder_name"
    t.string   "card_type"
    t.string   "security_code"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "purchases", force: true do |t|
    t.integer  "buyer_id"
    t.integer  "seller_id"
    t.integer  "listing_id"
    t.date     "date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "reviews", force: true do |t|
    t.integer  "location_id"
    t.integer  "rating"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "username"
    t.string   "password_confirmation"
    t.string   "email"
    t.string   "picture"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
  end

end
