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

ActiveRecord::Schema.define(version: 2019_02_25_025339) do

  create_table "associations", force: :cascade do |t|
    t.integer "reporter_id"
    t.integer "photographer_id"
    t.integer "shoot_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["photographer_id"], name: "index_associations_on_photographer_id"
    t.index ["reporter_id"], name: "index_associations_on_reporter_id"
    t.index ["shoot_id"], name: "index_associations_on_shoot_id"
  end

  create_table "photographers", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "phone_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reporters", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "phone_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "shoots", force: :cascade do |t|
    t.string "slug"
    t.text "assignment_description"
    t.datetime "start"
    t.datetime "end"
    t.string "location"
    t.string "contact_name"
    t.string "contact_phone_number"
    t.datetime "deadline"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
