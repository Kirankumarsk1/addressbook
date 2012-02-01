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

ActiveRecord::Schema.define(:version => 20120903114807) do

  create_table "groups", :force => true do |t|
    t.string "gname"
    t.string "glabel"
  end

  create_table "groups_members", :id => false, :force => true do |t|
    t.integer "member_id"
    t.integer "group_id"
  end

  add_index "groups_members", ["member_id", "group_id"], :name => "index_groups_members_on_member_id_and_group_id"

  create_table "members", :force => true do |t|
    t.string  "fname"
    t.string  "lname"
    t.string  "lphone"
    t.string  "mob"
    t.string  "email"
    t.string  "haddressl1"
    t.string  "haddressl2"
    t.string  "haddressl3"
    t.integer "hpincode"
    t.string  "hcity"
    t.string  "oaddressl1"
    t.string  "oaddressl2"
    t.string  "oaddressl3"
    t.string  "ocity"
    t.integer "opincode"
    t.boolean "hck",        :default => true
    t.boolean "ock",        :default => true
  end

end
