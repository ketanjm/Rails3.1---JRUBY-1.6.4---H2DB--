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

ActiveRecord::Schema.define(:version => 20120123234237) do

  create_table "users", :force => true do |t|
    t.string    "username",                             :default => "", :null => false
    t.string    "email",                                :default => "", :null => false
    t.string    "encrypted_password",                   :default => "", :null => false
    t.string    "reset_password_token"
    t.timestamp "reset_password_sent_at", :limit => 23
    t.timestamp "remember_created_at",    :limit => 23
    t.integer   "sign_in_count",          :limit => 10, :default => 0
    t.timestamp "current_sign_in_at",     :limit => 23
    t.timestamp "last_sign_in_at",        :limit => 23
    t.string    "current_sign_in_ip"
    t.string    "last_sign_in_ip"
    t.timestamp "created_at",             :limit => 23
    t.timestamp "updated_at",             :limit => 23
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
