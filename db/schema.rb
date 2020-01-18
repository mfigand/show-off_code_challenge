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

ActiveRecord::Schema.define(version: 2020_01_18_115309) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "users", force: :cascade do |t|
    t.string "first_name", null: false
    t.string "last_name", null: false
    t.string "password", null: false
    t.string "email", null: false
    t.string "image_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["created_at"], name: "index_users_on_created_at"
    t.index ["email"], name: "index_users_on_email"
    t.index ["first_name"], name: "index_users_on_first_name"
    t.index ["image_url"], name: "index_users_on_image_url"
    t.index ["last_name"], name: "index_users_on_last_name"
    t.index ["password"], name: "index_users_on_password"
    t.index ["updated_at"], name: "index_users_on_updated_at"
  end

  create_table "widgets", force: :cascade do |t|
    t.string "name", null: false
    t.string "description", null: false
    t.string "kind", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["created_at"], name: "index_widgets_on_created_at"
    t.index ["description"], name: "index_widgets_on_description"
    t.index ["kind"], name: "index_widgets_on_kind"
    t.index ["name"], name: "index_widgets_on_name"
    t.index ["updated_at"], name: "index_widgets_on_updated_at"
  end

end
