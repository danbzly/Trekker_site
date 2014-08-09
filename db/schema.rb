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

ActiveRecord::Schema.define(version: 20140809192247) do

  create_table "blogs", force: true do |t|
    t.string   "title"
    t.string   "category"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.text     "body_text"
    t.string   "slug"
  end

  add_index "blogs", ["user_id"], name: "index_blogs_on_user_id"

  create_table "legs", force: true do |t|
    t.string   "tran_air"
    t.string   "tran_air_cost"
    t.text     "tran_air_notes"
    t.string   "tran_train"
    t.string   "tran_train_cost"
    t.text     "tran_train_notes"
    t.string   "tran_bus"
    t.string   "tran_bus_cost"
    t.text     "tran_bus_notes"
    t.string   "tran_met"
    t.string   "tran_met_cost"
    t.text     "tran_met_notes"
    t.string   "tran_taxi"
    t.string   "tran_taxi_cost"
    t.text     "tran_taxi_notes"
    t.string   "tran_car"
    t.string   "tran_car_cost"
    t.text     "tran_car_notes"
    t.string   "tran_ferry"
    t.string   "tran_ferry_cost"
    t.text     "tran_ferry_notes"
    t.string   "tran_extra"
    t.string   "tran_extra_cost"
    t.text     "tran_extra_notes"
    t.string   "food_break"
    t.string   "food_break_cost"
    t.text     "food_break_notes"
    t.string   "tran_total"
    t.string   "food_lunch"
    t.string   "food_lunch_cost"
    t.text     "food_lunch_notes"
    t.string   "food_dinner"
    t.string   "food_dinner_cost"
    t.text     "food_dinner_notes"
    t.string   "food_snacks"
    t.string   "food_snacks_cost"
    t.text     "food_snacks_notes"
    t.string   "food_total"
    t.string   "food_extra"
    t.string   "food_extra_cost"
    t.text     "food_extra_notes"
    t.string   "lodging"
    t.string   "lodging_cost"
    t.text     "lodging_notes"
    t.string   "sight"
    t.string   "sight_cost"
    t.text     "sight_notes"
    t.string   "souvenirs"
    t.string   "souvenirs_cost"
    t.text     "souvenirs_notes"
    t.string   "bathroom"
    t.string   "bathroom_cost"
    t.text     "bathroom_notes"
    t.string   "bank"
    t.string   "bank_cost"
    t.text     "bank_notes"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.string   "img_map_file_name"
    t.string   "img_map_content_type"
    t.integer  "img_map_file_size"
    t.datetime "img_map_updated_at"
    t.string   "map_img_file_name"
    t.string   "map_img_content_type"
    t.integer  "map_img_file_size"
    t.datetime "map_img_updated_at"
    t.string   "slug"
    t.string   "Leg_title"
    t.string   "leg_slug"
  end

  add_index "legs", ["user_id"], name: "index_legs_on_user_id"

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
