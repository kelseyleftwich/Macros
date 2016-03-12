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

ActiveRecord::Schema.define(version: 20160312154301) do

  create_table "ingredients", force: :cascade do |t|
    t.string   "name",       limit: 25
    t.integer  "carbs",      limit: 4,  default: 0
    t.integer  "fat",        limit: 4,  default: 0
    t.integer  "protein",    limit: 4,  default: 0
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
  end

  create_table "meals", force: :cascade do |t|
    t.string   "name",       limit: 25
    t.string   "mealtype",   limit: 255, default: "Snack", null: false
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
    t.date     "mealdate"
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name", limit: 25
    t.string   "last_name",  limit: 50
    t.string   "email",      limit: 100
    t.string   "password",   limit: 40
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

end
