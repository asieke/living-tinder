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

ActiveRecord::Schema.define(version: 20140415221454) do

  create_table "deal_stats", force: true do |t|
    t.integer  "user_id"
    t.integer  "deal_id"
    t.integer  "time"
    t.integer  "num_tags"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "deal_stats", ["deal_id"], name: "index_deal_stats_on_deal_id", using: :btree
  add_index "deal_stats", ["user_id"], name: "index_deal_stats_on_user_id", using: :btree

  create_table "deal_tags", force: true do |t|
    t.integer  "deal_id"
    t.integer  "tag_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "deal_tags", ["deal_id"], name: "index_deal_tags_on_deal_id", using: :btree
  add_index "deal_tags", ["tag_id"], name: "index_deal_tags_on_tag_id", using: :btree
  add_index "deal_tags", ["user_id"], name: "index_deal_tags_on_user_id", using: :btree

  create_table "deals", force: true do |t|
    t.integer  "deal_id"
    t.integer  "len"
    t.text     "description"
    t.date     "offer_starts_at"
    t.date     "offer_ends_at"
    t.string   "merchant_name"
    t.string   "short_title"
    t.string   "image_url"
    t.string   "city_name"
    t.string   "dma"
    t.float    "ls_pct"
    t.float    "feature_price"
    t.float    "feature_value"
    t.string   "sales_rep"
    t.string   "category"
    t.string   "subcategory"
    t.string   "concept"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "number_tags"
  end

  create_table "dmas", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "friendly_id_slugs", force: true do |t|
    t.string   "slug",                      null: false
    t.integer  "sluggable_id",              null: false
    t.string   "sluggable_type", limit: 50
    t.string   "scope"
    t.datetime "created_at"
  end

  add_index "friendly_id_slugs", ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true, using: :btree
  add_index "friendly_id_slugs", ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type", using: :btree
  add_index "friendly_id_slugs", ["sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_id", using: :btree
  add_index "friendly_id_slugs", ["sluggable_type"], name: "index_friendly_id_slugs_on_sluggable_type", using: :btree

  create_table "tags", force: true do |t|
    t.string   "ls_category"
    t.string   "name"
    t.string   "category"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.integer  "birthyear"
    t.string   "gender"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "seed",       limit: 8
  end

end
