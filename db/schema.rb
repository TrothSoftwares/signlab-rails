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

ActiveRecord::Schema.define(version: 20160520064654) do

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

  create_table "delayed_jobs", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "priority",   limit: 4,     default: 0, null: false
    t.integer  "attempts",   limit: 4,     default: 0, null: false
    t.text     "handler",    limit: 65535,             null: false
    t.text     "last_error", limit: 65535
    t.datetime "run_at"
    t.datetime "locked_at"
    t.datetime "failed_at"
    t.string   "locked_by",  limit: 255
    t.string   "queue",      limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["priority", "run_at"], name: "delayed_jobs_priority", using: :btree
  end

  create_table "designimages", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "description", limit: 255
    t.text     "url",         limit: 65535
    t.integer  "item_id",     limit: 4
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.index ["item_id"], name: "index_designimages_on_item_id", using: :btree
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
    t.string   "dimensions",           limit: 255
    t.string   "description",          limit: 255
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
    t.integer  "project_id",           limit: 4
    t.integer  "itemtype_id",          limit: 4
    t.integer  "jobtype_id",           limit: 4
    t.string   "unit",                 limit: 255
    t.string   "rate",                 limit: 255
    t.string   "amount",               limit: 255
    t.string   "surveydetails",        limit: 255
    t.string   "technique",            limit: 255
    t.string   "material",             limit: 255
    t.string   "team",                 limit: 255
    t.string   "designspecifications", limit: 255
    t.text     "designnotes",          limit: 65535
    t.index ["itemtype_id"], name: "index_items_on_itemtype_id", using: :btree
    t.index ["jobtype_id"], name: "index_items_on_jobtype_id", using: :btree
    t.index ["project_id"], name: "index_items_on_project_id", using: :btree
  end

  create_table "items_jobtypes", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "item_id",    limit: 4
    t.integer "jobtype_id", limit: 4
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
    t.string   "status",      limit: 255
    t.datetime "duedate"
    t.string   "fstatusom",   limit: 255
    t.string   "fstatusgm",   limit: 255
    t.string   "fstatusis",   limit: 255
    t.string   "fstatusps",   limit: 255
    t.string   "iscomment",   limit: 255
    t.string   "pscomment",   limit: 255
    t.index ["agent_id"], name: "index_projects_on_agent_id", using: :btree
    t.index ["customer_id"], name: "index_projects_on_customer_id", using: :btree
  end

  create_table "quotations", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.datetime "date"
    t.string   "subject",    limit: 255
    t.text     "body",       limit: 65535
    t.integer  "project_id", limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.text     "payment",    limit: 65535
    t.text     "delivery",   limit: 65535
    t.text     "power",      limit: 65535
    t.text     "storetext",  limit: 65535
    t.text     "note",       limit: 65535
    t.index ["project_id"], name: "index_quotations_on_project_id", using: :btree
  end

  create_table "siteimages", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "description", limit: 255
    t.text     "url",         limit: 65535
    t.integer  "item_id",     limit: 4
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.index ["item_id"], name: "index_siteimages_on_item_id", using: :btree
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.string   "authentication_token",   limit: 255, default: "", null: false
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.string   "role",                   limit: 255
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  create_table "version_associations", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "version_id",       limit: 4
    t.string  "foreign_key_name", limit: 255, null: false
    t.integer "foreign_key_id",   limit: 4
    t.index ["foreign_key_name", "foreign_key_id"], name: "index_version_associations_on_foreign_key", using: :btree
    t.index ["version_id"], name: "index_version_associations_on_version_id", using: :btree
  end

  create_table "versions", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "item_type",      limit: 255,        null: false
    t.integer  "item_id",        limit: 4,          null: false
    t.string   "event",          limit: 255,        null: false
    t.string   "whodunnit",      limit: 255
    t.text     "object",         limit: 4294967295
    t.datetime "created_at"
    t.text     "object_changes", limit: 4294967295
    t.integer  "transaction_id", limit: 4
    t.index ["item_type", "item_id"], name: "index_versions_on_item_type_and_item_id", using: :btree
    t.index ["transaction_id"], name: "index_versions_on_transaction_id", using: :btree
  end

  add_foreign_key "designimages", "items"
  add_foreign_key "enquiries", "projects"
  add_foreign_key "items", "itemtypes"
  add_foreign_key "items", "jobtypes"
  add_foreign_key "items", "projects"
  add_foreign_key "projects", "agents"
  add_foreign_key "projects", "customers"
  add_foreign_key "quotations", "projects"
  add_foreign_key "siteimages", "items"
end
