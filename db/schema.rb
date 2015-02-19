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

ActiveRecord::Schema.define(version: 20150219142541) do

  create_table "batches", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "store_id"
  end

  add_index "batches", ["store_id"], name: "index_batches_on_store_id"

  create_table "sendships", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "batch_id"
    t.integer  "sender_id"
    t.integer  "receiver_id"
  end

  add_index "sendships", ["batch_id"], name: "index_sendships_on_batch_id"
  add_index "sendships", ["receiver_id"], name: "index_sendships_on_receiver_id"
  add_index "sendships", ["sender_id", "receiver_id"], name: "index_sendships_on_sender_id_and_receiver_id"
  add_index "sendships", ["sender_id"], name: "index_sendships_on_sender_id"

  create_table "stores", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
