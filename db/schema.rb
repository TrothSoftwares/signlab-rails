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

ActiveRecord::Schema.define(version: 20151214102130) do

  create_table "agents", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name",          limit: 255
    t.string   "contactname",   limit: 255
    t.string   "contactno",     limit: 255
    t.string   "othcontactno",  limit: 255
    t.string   "othrefdetails", limit: 255
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "customers", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name",          limit: 255
    t.string   "contactname",   limit: 255
    t.string   "contactno",     limit: 255
    t.string   "othcontactno",  limit: 255
    t.string   "othrefdetails", limit: 255
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "enquiries", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.datetime "date"
    t.integer  "no",         limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.integer  "project_id", limit: 4
    t.index ["project_id"], name: "index_enquiries_on_project_id", using: :btree
  end

  create_table "items", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "dimensions",  limit: 255
    t.string   "description", limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.integer  "project_id",  limit: 4
    t.integer  "jobtype_id",  limit: 4
    t.integer  "itemtype_id", limit: 4
    t.index ["itemtype_id"], name: "index_items_on_itemtype_id", using: :btree
    t.index ["jobtype_id"], name: "index_items_on_jobtype_id", using: :btree
    t.index ["project_id"], name: "index_items_on_project_id", using: :btree
  end

  create_table "itemtypes", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "jobtypes", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "projects", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name",        limit: 255
    t.string   "location",    limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.integer  "customer_id", limit: 4
    t.integer  "agent_id",    limit: 4
    t.index ["agent_id"], name: "index_projects_on_agent_id", using: :btree
    t.index ["customer_id"], name: "index_projects_on_customer_id", using: :btree
  end

  add_foreign_key "enquiries", "projects"
  add_foreign_key "items", "itemtypes"
  add_foreign_key "items", "jobtypes"
  add_foreign_key "items", "projects"
  add_foreign_key "projects", "agents"
  add_foreign_key "projects", "customers"
end
