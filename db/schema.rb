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

ActiveRecord::Schema.define(version: 20131205004947) do

  create_table "dogs", force: true do |t|
    t.string   "name"
    t.integer  "age"
    t.string   "breed"
    t.text     "description"
    t.string   "temperament"
    t.string   "active"
    t.boolean  "housetrained"
    t.boolean  "picture"
    t.text     "special_needs"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "dog_snippet"
    t.string   "size"
    t.string   "gender"
    t.integer  "owner_id"
    t.string   "img_file_name"
    t.string   "img_content_type"
    t.integer  "img_file_size"
    t.datetime "img_updated_at"
    t.date     "available_start"
    t.date     "available_end"
  end

  create_table "dogshares", force: true do |t|
    t.integer  "dog_id"
    t.integer  "sitter_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "owner_id"
  end

  create_table "people", force: true do |t|
    t.string   "name"
    t.integer  "zip"
    t.boolean  "picture"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "person_snippet"
    t.string   "img_file_name"
    t.string   "img_content_type"
    t.integer  "img_file_size"
    t.datetime "img_updated_at"
    t.date     "available_start"
    t.date     "available_end"
    t.text     "bio"
    t.string   "email"
  end

end
