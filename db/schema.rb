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

ActiveRecord::Schema.define(version: 20170404220250) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "index_reports", primary_key: "false", force: :cascade do |t|
    t.integer  "ism_report_id"
    t.integer  "index_id"
    t.decimal  "index_reading"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["index_id"], name: "index_index_reports_on_index_id", using: :btree
    t.index ["ism_report_id"], name: "index_index_reports_on_ism_report_id", using: :btree
  end

  create_table "indices", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "industries", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ism_reports", force: :cascade do |t|
    t.date     "published_at"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "rankings", primary_key: "false", force: :cascade do |t|
    t.integer  "industry_id"
    t.integer  "ism_report_id"
    t.integer  "index_id"
    t.integer  "place"
    t.boolean  "growth"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["index_id"], name: "index_rankings_on_index_id", using: :btree
    t.index ["industry_id"], name: "index_rankings_on_industry_id", using: :btree
    t.index ["ism_report_id"], name: "index_rankings_on_ism_report_id", using: :btree
  end

  create_table "respondent_quotes", id: false, force: :cascade do |t|
    t.integer  "ism_report_id"
    t.integer  "industry_id"
    t.string   "quote"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["industry_id"], name: "index_respondent_quotes_on_industry_id", using: :btree
    t.index ["ism_report_id"], name: "index_respondent_quotes_on_ism_report_id", using: :btree
  end

  create_table "stocks", force: :cascade do |t|
    t.string   "name"
    t.string   "ticker"
    t.integer  "value_chain_id"
    t.integer  "industry_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["industry_id"], name: "index_stocks_on_industry_id", using: :btree
    t.index ["value_chain_id"], name: "index_stocks_on_value_chain_id", using: :btree
  end

  create_table "value_chains", force: :cascade do |t|
    t.string   "name"
    t.integer  "industry_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["industry_id"], name: "index_value_chains_on_industry_id", using: :btree
  end

  add_foreign_key "index_reports", "indices"
  add_foreign_key "index_reports", "ism_reports"
  add_foreign_key "rankings", "indices"
  add_foreign_key "rankings", "industries"
  add_foreign_key "rankings", "ism_reports"
  add_foreign_key "respondent_quotes", "industries"
  add_foreign_key "respondent_quotes", "ism_reports"
  add_foreign_key "stocks", "industries"
  add_foreign_key "stocks", "value_chains"
  add_foreign_key "value_chains", "industries"
end
