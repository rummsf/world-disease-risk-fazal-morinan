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

ActiveRecord::Schema.define(version: 2) do

  create_table "countries", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.integer "area"
    t.integer "population"
    t.float "median_age"
    t.float "life_expectancy_at_birth"
    t.float "infant_mortality_rate"
  end

  create_table "diseases", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "symptoms"
    t.boolean "life_threatening"
    t.boolean "vaccine_preventable"
    t.string "transmission"
    t.string "diagnosis"
    t.string "treatment"
    t.string "prevention"
    t.string "more"
  end

end
