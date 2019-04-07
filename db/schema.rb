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

ActiveRecord::Schema.define(version: 2019_03_31_223614) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "foods", force: :cascade do |t|
    t.string "name"
    t.decimal "servings_t", default: "0.0"
    t.decimal "ss_amt_wt_t", default: "0.0"
    t.string "ss_unit_wt_t"
    t.decimal "ss_amt_vol_t", default: "0.0"
    t.string "ss_unit_vol_t"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.decimal "beans_t", defbault: "0.0"
    t.decimal "berries_t", default: "0.0"
    t.decimal "other_fruits_t", default: "0.0"
    t.decimal "cruciferous_vegetables_t", default: "0.0"
    t.decimal "greens_t", default: "0.0"
    t.decimal "other_vegetables_t", default: "0.0"
    t.decimal "flaxseeds_t", default: "0.0"
    t.decimal "nuts_t", default: "0.0"
    t.decimal "turmeric_t", default: "0.0"
    t.decimal "whole_grains_t", default: "0.0"
    t.decimal "other_seeds_t", default: "0.0"
    t.decimal "cals_t", default: "0.0"
    t.decimal "fat_t", default: "0.0"
    t.decimal "carbs_t", default: "0.0"
    t.decimal "protein_t", default: "0.0"
    t.integer "user_id"
    t.string "variety"
  end

  create_table "ingredients", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "recipe_id"
    t.string "name"
    t.decimal "servings_t", default: "0.0"
    t.decimal "beans_t", default: "0.0"
    t.decimal "berries_t", default: "0.0"
    t.decimal "other_fruits_t", default: "0.0"
    t.decimal "cruciferous_vegetables_t", default: "0.0"
    t.decimal "greens_t", default: "0.0"
    t.decimal "other_vegetables_t", default: "0.0"
    t.decimal "flaxseeds_t", default: "0.0"
    t.decimal "nuts_t", default: "0.0"
    t.decimal "turmeric_t", default: "0.0"
    t.decimal "whole_grains_t", default: "0.0"
    t.decimal "other_seeds_t", default: "0.0"
    t.decimal "cals_t", default: "0.0"
    t.decimal "fat_t", default: "0.0"
    t.decimal "carbs_t", default: "0.0"
    t.decimal "protein_t", default: "0.0"
  end

  create_table "items", force: :cascade do |t|
    t.string "name"
    t.decimal "ss_amt_wt", default: "0.0"
    t.string "ss_unit_wt"
    t.decimal "ss_amt_vol", default: "0.0"
    t.string "ss_unit_vol"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.decimal "beans", default: "0.0"
    t.decimal "berries", default: "0.0"
    t.decimal "other_fruits", default: "0.0"
    t.decimal "cruciferous_vegetables", default: "0.0"
    t.decimal "greens", default: "0.0"
    t.decimal "other_vegetables", default: "0.0"
    t.decimal "flaxseeds", default: "0.0"
    t.decimal "nuts", default: "0.0"
    t.decimal "turmeric", default: "0.0"
    t.decimal "whole_grains", default: "0.0"
    t.decimal "other_seeds", default: "0.0"
    t.decimal "cals", default: "0.0"
    t.decimal "fat", default: "0.0"
    t.decimal "carbs", default: "0.0"
    t.decimal "protein", default: "0.0"
    t.string "variety"
  end

  create_table "recipes", force: :cascade do |t|
    t.string "name"
    t.decimal "servings", default: "0.0"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.decimal "beans", default: "0.0"
    t.decimal "berries", default: "0.0"
    t.decimal "other_fruits", default: "0.0"
    t.decimal "cruciferous_vegetables", default: "0.0"
    t.decimal "greens", default: "0.0"
    t.decimal "other_vegetables", default: "0.0"
    t.decimal "flaxseeds", default: "0.0"
    t.decimal "nuts", default: "0.0"
    t.decimal "turmeric", default: "0.0"
    t.decimal "whole_grains", default: "0.0"
    t.decimal "other_seeds", default: "0.0"
    t.decimal "cals", default: "0.0"
    t.decimal "fat", default: "0.0"
    t.decimal "carbs", default: "0.0"
    t.decimal "protein", default: "0.0"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "authentication_token", limit: 30
    t.string "name"
    t.decimal "beans_g", default: "0.0"
    t.decimal "berries_g", default: "0.0"
    t.decimal "other_fruits_g", default: "0.0"
    t.decimal "cruciferous_vegetables_g", default: "0.0"
    t.decimal "greens_g", default: "0.0"
    t.decimal "other_vegetables_g", default: "0.0"
    t.decimal "flaxseeds_g", default: "0.0"
    t.decimal "nuts_g", default: "0.0"
    t.decimal "turmeric_g", default: "0.0"
    t.decimal "whole_grains_g", default: "0.0"
    t.decimal "other_seeds_g", default: "0.0"
    t.decimal "cals_g", default: "0.0"
    t.decimal "fat_g", default: "0.0"
    t.decimal "carbs_g", default: "0.0"
    t.decimal "protein_g", default: "0.0"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
