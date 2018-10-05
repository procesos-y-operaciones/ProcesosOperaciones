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
    t.integer "area_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["area_id"], name: "index_areas_on_area_id"
  end

  create_table "charges", force: :cascade do |t|
    t.string "name"
    t.string "code"
    t.integer "total_employees"
    t.integer "area_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["area_id"], name: "index_charges_on_area_id"
  end

  create_table "cities", force: :cascade do |t|
    t.string "name"
    t.string "code"
    t.integer "departament_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["departament_id"], name: "index_cities_on_departament_id"
  end

  create_table "contract_types", force: :cascade do |t|
    t.string "name"
    t.string "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contracts", force: :cascade do |t|
    t.integer "employees"
    t.integer "contract_type_id"
    t.integer "charge_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["charge_id"], name: "index_contracts_on_charge_id"
    t.index ["contract_type_id"], name: "index_contracts_on_contract_type_id"
  end

  create_table "departaments", force: :cascade do |t|
    t.string "name"
    t.string "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "generation_ranges", force: :cascade do |t|
    t.string "name"
    t.string "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "genres", force: :cascade do |t|
    t.string "name"
    t.string "code"
    t.string "alias"
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
    t.integer "period_id"
    t.integer "goal_type_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["goal_type_id"], name: "index_goals_on_goal_type_id"
    t.index ["period_id"], name: "index_goals_on_period_id"
    t.index ["user_id"], name: "index_goals_on_user_id"
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
    t.integer "age"
    t.string "personal_mail"
    t.string "corporative_mail"
    t.string "telephone"
    t.string "celphone"
    t.string "address"
    t.boolean "terms", default: false
    t.integer "identification_type_id"
    t.integer "departament_id"
    t.integer "city_id"
    t.integer "area_id"
    t.integer "charge_id"
    t.integer "genre_id"
    t.integer "generation_range_id"
    t.integer "role_id"
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["area_id"], name: "index_users_on_area_id"
    t.index ["charge_id"], name: "index_users_on_charge_id"
    t.index ["city_id"], name: "index_users_on_city_id"
    t.index ["departament_id"], name: "index_users_on_departament_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["generation_range_id"], name: "index_users_on_generation_range_id"
    t.index ["genre_id"], name: "index_users_on_genre_id"
    t.index ["identification_type_id"], name: "index_users_on_identification_type_id"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["role_id"], name: "index_users_on_role_id"
  end

end
