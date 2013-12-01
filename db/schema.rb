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

ActiveRecord::Schema.define(:version => 20131201230248) do

  create_table "businesses", :force => true do |t|
    t.string   "name",       :limit => 150, :null => false
    t.string   "website",    :limit => 250
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
  end

  add_index "businesses", ["name"], :name => "index_businesses_on_name"

  create_table "locations", :force => true do |t|
    t.integer  "business_id",                 :null => false
    t.string   "street",       :limit => 100, :null => false
    t.string   "street2",      :limit => 100
    t.string   "city",         :limit => 50,  :null => false
    t.string   "state",        :limit => 2,   :null => false
    t.string   "postal_code",  :limit => 10,  :null => false
    t.string   "phone",        :limit => 15
    t.string   "neighborhood", :limit => 100, :null => false
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
  end

  add_index "locations", ["business_id"], :name => "index_locations_on_business_id"
  add_index "locations", ["neighborhood"], :name => "index_locations_on_neighborhood"
  add_index "locations", ["postal_code"], :name => "index_locations_on_postal_code"

  create_table "rails_admin_histories", :force => true do |t|
    t.text     "message"
    t.string   "username"
    t.integer  "item"
    t.string   "table"
    t.integer  "month",      :limit => 2
    t.integer  "year",       :limit => 8
    t.datetime "created_at",              :null => false
    t.datetime "updated_at",              :null => false
  end

  add_index "rails_admin_histories", ["item", "table", "month", "year"], :name => "index_rails_admin_histories"

  create_table "roast_notes", :force => true do |t|
    t.integer  "user_id",    :null => false
    t.integer  "roast_id",   :null => false
    t.text     "content",    :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.date     "roasted_at", :null => false
  end

  add_index "roast_notes", ["roast_id"], :name => "index_roast_notes_on_roast_id"
  add_index "roast_notes", ["user_id"], :name => "index_roast_notes_on_user_id"

  create_table "roasts", :force => true do |t|
    t.integer  "business_id",                :null => false
    t.string   "name",        :limit => 150, :null => false
    t.string   "blend_type",  :limit => 50,  :null => false
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
  end

  add_index "roasts", ["blend_type"], :name => "index_roasts_on_blend_type"
  add_index "roasts", ["business_id"], :name => "index_roasts_on_business_id"

  create_table "users", :force => true do |t|
    t.string   "first_name",             :limit => 50, :default => "",       :null => false
    t.string   "last_name",              :limit => 50, :default => "",       :null => false
    t.string   "email",                                :default => "",       :null => false
    t.string   "encrypted_password",                   :default => "",       :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                        :default => 0,        :null => false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.integer  "failed_attempts",                      :default => 0,        :null => false
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at",                                                 :null => false
    t.datetime "updated_at",                                                 :null => false
    t.string   "profile",                :limit => 25, :default => "reader"
  end

  add_index "users", ["confirmation_token"], :name => "index_users_on_confirmation_token", :unique => true
  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true
  add_index "users", ["unlock_token"], :name => "index_users_on_unlock_token", :unique => true

  create_table "versions", :force => true do |t|
    t.string   "item_type",  :null => false
    t.integer  "item_id",    :null => false
    t.string   "event",      :null => false
    t.string   "whodunnit"
    t.text     "object"
    t.datetime "created_at"
  end

  add_index "versions", ["item_type", "item_id"], :name => "index_versions_on_item_type_and_item_id"

end
