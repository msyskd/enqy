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

ActiveRecord::Schema.define(:version => 20120501164548) do

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
    t.integer  "notice_me",       :default => 30,    :null => false
    t.boolean  "usable",          :default => true,  :null => false
    t.datetime "created_at",                         :null => false
    t.datetime "updated_at",                         :null => false
  end

  add_index "clients", ["name"], :name => "index_clients_on_name"

  create_table "sales_people", :force => true do |t|
    t.string   "name",       :null => false
    t.string   "email",      :null => false
    t.integer  "phone1"
    t.integer  "phone2"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "sales_people", ["email"], :name => "index_sales_people_on_email", :unique => true
  add_index "sales_people", ["name"], :name => "index_sales_people_on_name"

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
