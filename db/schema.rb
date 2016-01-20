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

ActiveRecord::Schema.define(version: 20160119091707) do

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
    t.index ["project_id"], name: "index_quotations_on_project_id", using: :btree
  end

  create_table "roles", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name",          limit: 255
    t.string   "resource_type", limit: 255
    t.integer  "resource_id",   limit: 4
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.index ["name", "resource_type", "resource_id"], name: "index_roles_on_name_and_resource_type_and_resource_id", using: :btree
    t.index ["name"], name: "index_roles_on_name", using: :btree
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

  create_table "users_roles", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "user_id", limit: 4
    t.integer "role_id", limit: 4
    t.index ["user_id", "role_id"], name: "index_users_roles_on_user_id_and_role_id", using: :btree
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
