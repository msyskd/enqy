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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120627150042) do

  create_table "clients", :force => true do |t|
    t.string   "name",                               :null => false
    t.integer  "user_id",                            :null => false
    t.integer  "sales_person_id",                    :null => false
    t.boolean  "renewal_month1",  :default => false, :null => false
    t.boolean  "renewal_month2",  :default => false, :null => false
    t.boolean  "renewal_month3",  :default => false, :null => false
    t.boolean  "renewal_month4",  :default => false, :null => false
    t.boolean  "renewal_month5",  :default => false, :null => false
    t.boolean  "renewal_month6",  :default => false, :null => false
    t.boolean  "renewal_month7",  :default => false, :null => false
    t.boolean  "renewal_month8",  :default => false, :null => false
    t.boolean  "renewal_month9",  :default => false, :null => false
    t.boolean  "renewal_month10", :default => false, :null => false
    t.boolean  "renewal_month11", :default => false, :null => false
    t.boolean  "renewal_month12", :default => false, :null => false
    t.boolean  "usable",          :default => true,  :null => false
    t.datetime "created_at",                         :null => false
    t.datetime "updated_at",                         :null => false
  end

  add_index "clients", ["name"], :name => "index_clients_on_name"

  create_table "enquiries", :force => true do |t|
    t.integer  "client_id",                     :null => false
    t.integer  "user_id",                       :null => false
    t.integer  "system_id",                     :null => false
    t.datetime "start",                         :null => false
    t.datetime "end"
    t.boolean  "closed",     :default => false, :null => false
    t.text     "question",                      :null => false
    t.text     "answer"
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
    t.time     "total_time"
  end

  add_index "enquiries", ["client_id"], :name => "index_enquiries_on_client_id"
  add_index "enquiries", ["closed"], :name => "index_enquiries_on_closed"
  add_index "enquiries", ["system_id"], :name => "index_enquiries_on_system_id"
  add_index "enquiries", ["user_id"], :name => "index_enquiries_on_user_id"

  create_table "licenses", :force => true do |t|
    t.integer  "client_id",                 :null => false
    t.integer  "system_id",                 :null => false
    t.integer  "amount",     :default => 0
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
  end

  add_index "licenses", ["client_id"], :name => "index_licenses_on_client_id"
  add_index "licenses", ["system_id"], :name => "index_licenses_on_system_id"

  create_table "sales_people", :force => true do |t|
    t.string   "first_name", :null => false
    t.string   "last_name",  :null => false
    t.string   "email",      :null => false
    t.integer  "phone1"
    t.integer  "phone2"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "sales_people", ["email"], :name => "index_sales_people_on_email"
  add_index "sales_people", ["first_name"], :name => "index_sales_people_on_first_name"
  add_index "sales_people", ["last_name"], :name => "index_sales_people_on_last_name"

  create_table "systems", :force => true do |t|
    t.integer  "sort",       :null => false
    t.string   "name",       :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "systems", ["sort"], :name => "index_systems_on_sort"

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "",     :null => false
    t.string   "encrypted_password",     :default => "",     :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                                 :null => false
    t.datetime "updated_at",                                 :null => false
    t.string   "first_name",                                 :null => false
    t.string   "last_name",                                  :null => false
    t.integer  "notice_me",              :default => 30
    t.integer  "last_notice",            :default => 200001, :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
