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

ActiveRecord::Schema.define(version: 20130730021502) do

  create_table "client_errors", force: true do |t|
    t.string   "business"
    t.integer  "errors"
    t.datetime "time"
    t.text     "detail"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "machine_businesses", force: true do |t|
    t.string   "ip"
    t.string   "type"
    t.string   "business"
    t.string   "domain"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "machine_errors", force: true do |t|
    t.integer  "machine_business_id"
    t.integer  "pv"
    t.integer  "error"
    t.string   "error_type"
    t.date     "on_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "machine_statuses", force: true do |t|
    t.string   "ip"
    t.decimal  "cpu_usage",      precision: 10, scale: 2
    t.decimal  "disk_io_rate",   precision: 10, scale: 2
    t.decimal  "load",           precision: 10, scale: 2
    t.integer  "tcp_connection"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
