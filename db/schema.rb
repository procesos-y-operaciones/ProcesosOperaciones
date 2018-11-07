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

ActiveRecord::Schema.define(version: 20181030000429) do

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

  create_table "competencies", force: :cascade do |t|
    t.string "code"
    t.string "comp_name"
    t.integer "percentaje"
    t.integer "goal_type_id"
    t.integer "area_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["area_id"], name: "index_competencies_on_area_id"
    t.index ["goal_type_id"], name: "index_competencies_on_goal_type_id"
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

  create_table "evaluations", force: :cascade do |t|
    t.integer "boss_id"
    t.integer "step", default: 1
    t.string "comment"
    t.string "final_comment"
    t.integer "final_score"
    t.string "resource"
    t.integer "user_id"
    t.integer "period_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["period_id"], name: "index_evaluations_on_period_id"
    t.index ["user_id"], name: "index_evaluations_on_user_id"
  end

  create_table "evaluations_competencies", force: :cascade do |t|
    t.integer "score"
    t.integer "competency_id"
    t.integer "evaluation_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["competency_id"], name: "index_evaluations_competencies_on_competency_id"
    t.index ["evaluation_id"], name: "index_evaluations_competencies_on_evaluation_id"
  end

  create_table "evaluations_goals", force: :cascade do |t|
    t.integer "goal_id"
    t.integer "evaluation_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["evaluation_id"], name: "index_evaluations_goals_on_evaluation_id"
    t.index ["goal_id"], name: "index_evaluations_goals_on_goal_id"
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
    t.string "code"
    t.string "goal_name"
    t.integer "phases_number"
    t.string "general_ind"
    t.string "specific_ind"
    t.integer "percentaje"
    t.integer "goal_type_id"
    t.integer "area_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["area_id"], name: "index_goals_on_area_id"
    t.index ["goal_type_id"], name: "index_goals_on_goal_type_id"
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
    t.integer "resource"
    t.integer "boss_id"
    t.date "date_beg_p1"
    t.date "date_end_p1"
    t.date "date_beg_p2"
    t.date "date_end_p2"
    t.date "date_beg_p3"
    t.date "date_end_p3"
    t.date "date_beg_p4"
    t.date "date_end_p4"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "phases", force: :cascade do |t|
    t.integer "proposed"
    t.integer "goal_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["goal_id"], name: "index_phases_on_goal_id"
  end

  create_table "phases_users", force: :cascade do |t|
    t.integer "reached"
    t.integer "proposed"
    t.string "compromise"
    t.integer "evaluations_goal_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["evaluations_goal_id"], name: "index_phases_users_on_evaluations_goal_id"
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
    t.integer "evaluation_role", default: 3
    t.boolean "terms", default: false
    t.string "resource"
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
    t.string "avatar_file_name"
    t.string "avatar_content_type"
    t.integer "avatar_file_size"
    t.datetime "avatar_updated_at"
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
