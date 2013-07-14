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

ActiveRecord::Schema.define(version: 20130714182504) do

  create_table "entries", force: true do |t|
    t.string   "title"
    t.string   "url"
    t.string   "author"
    t.string   "summary"
    t.string   "content"
    t.datetime "published"
    t.integer  "feed_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "entries", ["feed_id"], name: "index_entries_on_feed_id", using: :btree

  create_table "feeds", force: true do |t|
    t.string   "title"
    t.string   "url"
    t.string   "website"
    t.string   "etag"
    t.string   "last_modified"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "roles", force: true do |t|
    t.string   "name"
    t.integer  "resource_id"
    t.string   "resource_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "roles", ["name", "resource_type", "resource_id"], name: "index_roles_on_name_and_resource_type_and_resource_id", using: :btree
  add_index "roles", ["name"], name: "index_roles_on_name", using: :btree

  create_table "subscriptions", force: true do |t|
    t.integer  "user_id"
    t.integer  "feed_id"
    t.integer  "subscriptions_count_id", default: 0
    t.integer  "integer_id",             default: 0
    t.integer  "entries_id",             default: 0
    t.string   "title"
    t.datetime "last_modified"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "subscriptions", ["feed_id"], name: "index_subscriptions_on_feed_id", using: :btree
  add_index "subscriptions", ["user_id", "feed_id"], name: "index_subscriptions_on_user_id_and_feed_id", unique: true, using: :btree
  add_index "subscriptions", ["user_id"], name: "index_subscriptions_on_user_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "provider"
    t.string   "uid"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users_roles", id: false, force: true do |t|
    t.integer "user_id"
    t.integer "role_id"
  end

  add_index "users_roles", ["user_id", "role_id"], name: "index_users_roles_on_user_id_and_role_id", using: :btree

end
