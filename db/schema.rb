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

ActiveRecord::Schema.define(:version => 20120416232222) do

  create_table "customers", :force => true do |t|
    t.string   "email",                                                          :null => false
    t.string   "password_digest",                                                :null => false
    t.string   "first_name",                                                     :null => false
    t.string   "last_name",                                                      :null => false
    t.string   "phone",                                                          :null => false
    t.string   "address",                                                        :null => false
    t.decimal  "amt_spent",       :precision => 8, :scale => 2, :default => 0.0, :null => false
    t.datetime "created_at",                                                     :null => false
    t.datetime "updated_at",                                                     :null => false
  end

  create_table "includes_drinks", :force => true do |t|
    t.string   "drink_name",                                                  :null => false
    t.string   "manufacturer",                                                :null => false
    t.string   "description",                                                 :null => false
    t.decimal  "price",        :precision => 8, :scale => 2, :default => 0.0
    t.datetime "created_at",                                                  :null => false
    t.datetime "updated_at",                                                  :null => false
  end

  create_table "ingredients", :force => true do |t|
    t.string   "ingred_name",                    :null => false
    t.string   "description",                    :null => false
    t.decimal  "price",         :default => 0.0, :null => false
    t.datetime "created_at",                     :null => false
    t.datetime "updated_at",                     :null => false
    t.integer  "preference_id"
  end

  create_table "orders", :force => true do |t|
    t.datetime "order_time",                                                  :null => false
    t.decimal  "price",      :precision => 8, :scale => 2,                    :null => false
    t.boolean  "delivered",                                :default => false, :null => false
    t.datetime "created_at",                                                  :null => false
    t.datetime "updated_at",                                                  :null => false
  end

  create_table "preferences", :force => true do |t|
    t.integer  "quantity",                                    :default => 1,   :null => false
    t.string   "size",                                                         :null => false
    t.string   "crust",                                                        :null => false
    t.decimal  "price",         :precision => 8, :scale => 2, :default => 0.0, :null => false
    t.datetime "created_at",                                                   :null => false
    t.datetime "updated_at",                                                   :null => false
    t.integer  "order_id"
    t.integer  "ingredient_id"
  end

  create_table "taxes", :force => true do |t|
    t.string   "state",      :null => false
    t.string   "tax_name",   :null => false
    t.decimal  "amount",     :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
