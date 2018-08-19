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

ActiveRecord::Schema.define(version: 2018_08_19_155842) do

  create_table "bloggers", force: :cascade do |t|
    t.string "name"
    t.string "bio"
    t.integer "age"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "destinations", force: :cascade do |t|
    t.string "name"
    t.string "country"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "posts", force: :cascade do |t|
    t.string "title"
    t.string "content"
    t.integer "likes"
    t.integer "destination_id"
    t.integer "blogger_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["blogger_id"], name: "index_posts_on_blogger_id"
    t.index ["destination_id"], name: "index_posts_on_destination_id"
  end

end