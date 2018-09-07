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

ActiveRecord::Schema.define(version: 20180907199001) do

  create_table "areas", force: :cascade do |t|
    t.string "name"
    t.string "code"
    t.integer "areas_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["areas_id"], name: "index_areas_on_areas_id"
  end

  create_table "charges", force: :cascade do |t|
    t.string "name"
    t.string "code"
    t.integer "total_employees"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cities", force: :cascade do |t|
    t.string "name"
    t.string "code"
    t.integer "departaments_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["departaments_id"], name: "index_cities_on_departaments_id"
  end

  create_table "contract_types", force: :cascade do |t|
    t.string "name"
    t.string "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contracts", force: :cascade do |t|
    t.integer "employees"
    t.integer "contract_types_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["contract_types_id"], name: "index_contracts_on_contract_types_id"
  end

  create_table "departaments", force: :cascade do |t|
    t.string "name"
    t.string "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "generation_ranges", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "genres", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "goal_types", force: :cascade do |t|
    t.string "name"
    t.string "code"
    t.string "evaluation"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "goals", force: :cascade do |t|
    t.integer "phases_number"
    t.string "comment"
    t.integer "periods_id"
    t.integer "goal_types_id"
    t.integer "users_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["goal_types_id"], name: "index_goals_on_goal_types_id"
    t.index ["periods_id"], name: "index_goals_on_periods_id"
    t.index ["users_id"], name: "index_goals_on_users_id"
  end

  create_table "identification_types", force: :cascade do |t|
    t.string "name"
    t.string "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "periods", force: :cascade do |t|
    t.string "name"
    t.string "code"
    t.string "state"
    t.date "date_beg"
    t.date "date_end"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "phases", force: :cascade do |t|
    t.integer "proposed"
    t.integer "reached"
    t.string "compromise"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "roles", force: :cascade do |t|
    t.string "name"
    t.string "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.bigint "document"
    t.date "expedition_date"
    t.string "expedition_place"
    t.string "first_name"
    t.string "second_name"
    t.string "first_lastname"
    t.string "second_lastname"
    t.date "born_date"
    t.string "personal_mail"
    t.string "corporative_mail"
    t.string "telephone"
    t.string "celphone"
    t.string "address"
    t.integer "identification_types_id"
    t.integer "departaments_id"
    t.integer "cities_id"
    t.integer "areas_id"
    t.integer "charges_id"
    t.integer "genres_id"
    t.integer "generation_ranges_id"
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["areas_id"], name: "index_users_on_areas_id"
    t.index ["charges_id"], name: "index_users_on_charges_id"
    t.index ["cities_id"], name: "index_users_on_cities_id"
    t.index ["departaments_id"], name: "index_users_on_departaments_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["generation_ranges_id"], name: "index_users_on_generation_ranges_id"
    t.index ["genres_id"], name: "index_users_on_genres_id"
    t.index ["identification_types_id"], name: "index_users_on_identification_types_id"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
