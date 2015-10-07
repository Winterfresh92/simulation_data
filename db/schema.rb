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

ActiveRecord::Schema.define(version: 20151007145912) do

  create_table "games", force: :cascade do |t|
    t.float    "play_time"
    t.float    "moving_time"
    t.float    "race_time"
    t.float    "idle_time"
    t.integer  "collisions"
    t.integer  "items_collected"
    t.integer  "powerups_collected"
    t.string   "difficulty"
    t.integer  "won"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.integer  "player_id"
  end

  add_index "games", ["player_id"], name: "index_games_on_player_id"

  create_table "players", force: :cascade do |t|
    t.string   "name"
    t.date     "birthday"
    t.integer  "games_played"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

end