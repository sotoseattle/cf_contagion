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

ActiveRecord::Schema.define(version: 20141004223831) do

  create_table "patients", force: true do |t|
    t.string   "name"
    t.string   "socsec"
    t.string   "hospital"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "transmissions", force: true do |t|
    t.integer  "patient_id"
    t.integer  "infected_id"
    t.string   "location"
    t.date     "date",        limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "transmissions", ["infected_id"], name: "index_transmissions_on_infected_id"
  add_index "transmissions", ["patient_id"], name: "index_transmissions_on_patient_id"

end
