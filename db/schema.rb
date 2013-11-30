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

ActiveRecord::Schema.define(:version => 20131130201045) do

  create_table "businesses", :force => true do |t|
    t.string   "name",       :limit => 150, :null => false
    t.string   "website",    :limit => 250
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
  end

  add_index "businesses", ["name"], :name => "index_businesses_on_name"

  create_table "roasts", :force => true do |t|
    t.integer  "business_id",                :null => false
    t.string   "name",        :limit => 150, :null => false
    t.string   "blend_type",  :limit => 50,  :null => false
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
  end

  add_index "roasts", ["blend_type"], :name => "index_roasts_on_blend_type"
  add_index "roasts", ["business_id"], :name => "index_roasts_on_business_id"

end
